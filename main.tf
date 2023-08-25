resource "aws_vpc" "vpc_id" {
  cidr_block       = var.aws_vpc_vinod
  instance_tenancy = "default"

  tags = {
    Name = "vpc_id"
  }
}

resource "aws_subnet" "subnet_id" {
  count      = length(var.aws_subnet_names)
  vpc_id     = aws_vpc.vpc_id.id
  cidr_block = cidrsubnet(var.aws_vpc_vinod, 8, count.index)

  tags = {
    Name = var.aws_subnet_names[count.index]
  }
}

