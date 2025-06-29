resource "aws_subnet" "eks-pub-sub" {
    vpc_id = var.eks-vpc-id
    cidr_block = var.eks-pub-sub-cidr
    availability_zone = var.eks-pub-sub-az
    map_public_ip_on_launch = true 
    tags = {
        Name = "eks-pub-sub"
    }
}


resource "aws_subnet" "eks-pvt-subA" {
    vpc_id = var.eks-vpc-id
    cidr_block = var.eks-pvt-subA-cidr
    availability_zone = var.eks-pvt-subA-az
    tags = {
        Name = "eks-pvt-subA"
    }
}

resource "aws_subnet" "eks-pvt-subB" {
    vpc_id = var.eks-vpc-id
    cidr_block = var.eks-pvt-subB-cidr
    availability_zone = var.eks-pvt-subB-az
    tags = {
        Name = "eks-pvt-subB"
    }
}