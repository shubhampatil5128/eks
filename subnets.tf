resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.eks.id
  cidr_block              = "172.17.0.0/24"
  availability_zone       = "us-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name                        = "public1"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1

  }
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.eks.id
  cidr_block              = "172.17.50.0/24"
  availability_zone       = "us-west-1b"
  map_public_ip_on_launch = true

  tags = {
    Name                        = "public2"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.eks.id
  cidr_block        = "172.17.100.0/24"
  availability_zone = "us-west-1a"

  tags = {
    Name                              = "private1"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internel-elb" = 1
  }
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.eks.id
  cidr_block        = "172.17.150.0/24"
  availability_zone = "us-west-1b"

  tags = {
    Name                              = "private2"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internel-elb" = 1
  }
}
