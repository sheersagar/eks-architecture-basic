variable "eks-vpc-id" {
    type        = string
    description = "This will define the ID of the EKS VPC"
}
variable "eks-igw-id" {
    type  = string 
    description = "This will define the ID of the EKS Internet Gateway"
}

variable "eks-pub-sub-id" {
    type        = string
    description = "This will define the ID of the EKS public subnet"
}


variable "eks-nat-gw-id" {
    type        = string
    description = "This will define the ID of the EKS NAT Gateway"
}

variable "eks-pvt-subA-id" {
    type        = string
    description = "This will define the ID of the EKS private subnet A"
}

variable "eks-pvt-subB-id" {
    type        = string
    description = "This will define the ID of the EKS private subnet B"
}