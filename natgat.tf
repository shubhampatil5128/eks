resource "aws_nat_gateway" "eks-nat1" {
  allocation_id = aws_eip.eks-eip1.id
  subnet_id     = aws_subnet.public1.id

  tags = {
    Name = "eks-nat1"
  }

}

resource "aws_nat_gateway" "eks-nat2" {
  allocation_id = aws_eip.eks-eip2.id
  subnet_id     = aws_subnet.public2.id

  tags = {
    Name = "eks-nat2"
  }

}