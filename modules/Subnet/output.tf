output "eks-pub-sub-id" {
    value = aws_subnet.eks-pub-sub.id 
    description = "This will give the ID of the EKS public subnet"
}

output "eks-pvt-subA-id" {
    value = aws_subnet.eks-pvt-subA.id 
    description = "This will give the ID of the EKS private subnet A"
}

output "eks-pvt-subB-id" {
    value = aws_subnet.eks-pvt-subB.id 
    description = "This will give the ID of the EKS private subnet B"
}
