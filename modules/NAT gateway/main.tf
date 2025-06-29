resource "aws_eip" "eks-eip" {
    tags = {
        Name = "eks-EIP"
    }
}


resource "aws_nat_gateway" "eks-nat-gw" {
    # depends_on = [aws_eip.eks-eip]
    allocation_id = aws_eip.eks-eip.id
    subnet_id = var.eks-pub-sub-id 
    tags = {
        Name = "eks-nat-gateway"
    }
}