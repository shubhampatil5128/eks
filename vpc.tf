resource "aws_vpc" "eks" {
  cidr_block       = "172.17.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "eks-vpc"
  }
}

output "vpc_id" {
  value = aws_vpc.eks
}