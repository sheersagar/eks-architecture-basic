terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


module "vpc" {
  source       = "./modules/vpc"
  eks-vpc-cidr = var.eks-vpc-cidr

}

module "subnets" {
  source            = "./modules/Subnet"
  eks-vpc-id        = module.vpc.eks_vpc_id
  eks-pub-sub-az    = var.eks-pub-sub-az
  eks-pub-sub-cidr  = var.eks-pub-sub-cidr
  eks-pvt-subA-az   = var.eks-pvt-subA-az
  eks-pvt-subA-cidr = var.eks-pvt-subA-cidr
  eks-pvt-subB-az   = var.eks-pvt-subB-az
  eks-pvt-subB-cidr = var.eks-pvt-subB-cidr

}


module "igw" {
  source     = "./modules/IGW"
  eks-vpc-id = module.vpc.eks_vpc_id
}

module "nat-gw" {
  source         = "./modules/NAT gateway"
  eks-pub-sub-id = module.subnets.eks-pub-sub-id
}

module "route-table" {
  source                 = "./modules/Route Table"
  eks-vpc-id             = module.vpc.eks_vpc_id
  eks-igw-id             = module.igw.eks_igw_id
  eks-pub-sub-id         = module.subnets.eks-pub-sub-id
  eks-pvt-subA-id        = module.subnets.eks-pvt-subA-id
  eks-pvt-subB-id        = module.subnets.eks-pvt-subB-id
  eks-nat-gw-id          = module.nat-gw.eks_nat_gw_id
}

