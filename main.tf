resource "aws_vpc" "vpc_id" {
  cidr_block       = var.aws_vpc_vinod
  instance_tenancy = "default"

  tags = {
    Name = "vpc_id"
  }
}

resource "aws_subnet" "subnet_id" {
  count             = length(var.aws_subnet_names)
  vpc_id            = aws_vpc.vpc_id.id
  cidr_block        = cidrsubnet(var.aws_vpc_vinod, 8, count.index)
  availability_zone = var.subnet_avz[count.index]

  tags = {
    Name = var.aws_subnet_names[count.index]
  }
}

data "aws_route_table" "vinod_rout" {
  vpc_id = aws_vpc.vpc_id.id


}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_id.id

  tags = {
    Name = "main"
  }


}


resource "aws_route" "r" {
  route_table_id         = data.aws_route_table.vinod_rout.id
  destination_cidr_block = local.anywhere
  gateway_id             = aws_internet_gateway.gw.id

}
