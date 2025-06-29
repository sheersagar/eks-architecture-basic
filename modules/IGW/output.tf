output "eks_igw_id" {
    value = aws_internet_gateway.eks-igw.id
    description = "This will give the ID of the EKS Internet Gateway"
}