resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = (var.public_key_path)
  tags = {
    CreatedBy = "terraform"
  }
}
#data "aws_subnet" "ashok" {
#  filter {
#    name   = "tag:Name"
#    values = [var.ashok_subnet_name]
#  }
#}

resource "aws_instance" "run" {
  ami                         = "ami-0f5ee92e2d63afc18"
  associate_public_ip_address = "true"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.deployer.id
  subnet_id                   = aws_subnet.subnet_id[0].id
  vpc_security_group_ids      = [aws_security_group.vinod11.id]
  tags = {
    Name = "aws"
  }
}
