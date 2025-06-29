resource "aws_internet_gateway" "eks-igw" {
    vpc_id = var.eks-vpc-id
    tags = {
        Name = "eks-igw"
    }
}