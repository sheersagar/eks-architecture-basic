output "eks_nat_gw_id" {
    value = aws_nat_gateway.eks-nat-gw.id
    description = "This will give the ID of the EKS NAT Gateway"
}
