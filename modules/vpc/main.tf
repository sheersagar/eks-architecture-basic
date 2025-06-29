resource "aws_vpc" "eks-vpc" {
    cidr_block = var.eks-vpc-cidr
    enable_dns_support = true 
    enable_dns_hostnames = true 

    tags = {
        Name = "eks-vpc"
    }
}