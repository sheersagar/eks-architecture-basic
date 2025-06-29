# public routes
resource "aws_route_table" "eks-pub-sub-rt" {
    vpc_id = var.eks-vpc-id 
    tags = {
        Name = "eks-pub-sub-rt"
    }
}

resource "aws_route" "public-route" {
    route_table_id = aws_route_table.eks-pub-sub-rt.id 
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = var.eks-igw-id
}

resource "aws_route_table_association" "eks-pub-sub-rt-assoc" {
    subnet_id = var.eks-pub-sub-id
    route_table_id = aws_route_table.eks-pub-sub-rt.id 

}


#---------------------------------------
# private routes

resource "aws_route_table" "eks-pvt-subA-rt" {
    vpc_id = var.eks-vpc-id
    tags = {
        Name = "eks-pvt-rt"
    }
}

resource "aws_route" "eks-pvt-route" {
    route_table_id = aws_route_table.eks-pvt-subA-rt.id 
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = var.eks-nat-gw-id
}

resource "aws_route_table_association" "eks-pvt-subA-rt-assoc" {
    subnet_id = var.eks-pvt-subA-id
    route_table_id = aws_route_table.eks-pvt-subA-rt.id 
}

resource "aws_route_table_association" "eks-pvt-subB-rt-assoc" {
    subnet_id = var.eks-pvt-subB-id
    route_table_id = aws_route_table.eks-pvt-subA-rt.id 
}