output "eks_vpc_id" {
    value       = aws_vpc.eks-vpc.id
    description = "This will give the ID of the EKS VPC"
  
}

