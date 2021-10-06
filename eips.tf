resource "aws_eip" "eks-eip1" {

  depends_on = [aws_internet_gateway.eks-igw]
}

resource "aws_eip" "eks-eip2" {

  depends_on = [aws_internet_gateway.eks-igw]
}