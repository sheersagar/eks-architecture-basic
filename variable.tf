variable "eks-vpc-cidr" {
  type        = string
  description = "This will define the CIDR block for the EKS VPC"
}
# variable "eks-vpc-id" {
#   type        = string
#   description = "This will define the ID of the EKS VPC"
# }

variable "eks-pub-sub-az" {
  type        = string
  description = "This will define the availability zone for the EKS public subnet"
}
variable "eks-pub-sub-cidr" {
  type        = string
  description = "This will define the CIDR block for the EKS public subnet"
}
variable "eks-pvt-subA-cidr" {
  type        = string
  description = "This will define the CIDR block for the EKS private subnet A"
}
variable "eks-pvt-subA-az" {
  type        = string
  description = "This will define the availability zone for the EKS private subnet A"
}
variable "eks-pvt-subB-cidr" {
  type        = string
  description = "This will define the CIDR block for the EKS private subnet B"
}
variable "eks-pvt-subB-az" {
  type        = string
  description = "This will define the availability zone for the EKS private subnet B"
}



