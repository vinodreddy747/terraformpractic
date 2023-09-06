#data "aws_subnets" "annu1" {
#
#  filter {
#    name   = "tag:Nmae"
#    values = var.aws_subnet_names
#
#  }    
#}
#resource "aws_docdb_subnet_group" "default" {
#  name       = "main"
#  subnet_ids = data.aws_subnets.annu1.ids
#
#  tags = {
#    Name = "My docdb subnet group"
#  }
#}
#
#
#
#   
#
#
#resource "aws_db_subnet_group" "default" {
#  name       = "default"
#  subnet_ids = [data.aws_subnets.annu.ids]
#  tags = {
#    Name = "default"
#  }
#}
#
#resource "aws_db_subnet_group" "default" {
#  name       = "cse-cr"
#  subnet_ids = data.aws_subnets.annu1.ids
#}
#resource "aws_db_instance" "ntier" {
#  allocated_storage      = 20
#  db_name                = "emp"
#  engine                 = "mysql"
#  engine_version         = "8.0"
#  instance_class         = "db.t3.micro"
#  username               = "root"
#  password               = "rootroot"
#  skip_final_snapshot    = true
#  db_subnet_group_name   = aws_db_subnet_group.default.name
#  identifier             = "qtntierdbfromtf"
#  vpc_security_group_ids = [aws_security_group.annu11.id]
#}

