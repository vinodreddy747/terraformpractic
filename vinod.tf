resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDXMsUH5sm1qL62423bxj4oD1qv0hJ8CbzwDBoIoSc+WEs+HBAyaoXHr1xwM30gDJ2NbKE+Cx4sLqOdNuR2H9R9udCG/DooRUuDjdMl+prf0xIcAR7WS66UodnKwCVlCF4VugkSENu+YUHGj6Pa8Fh1IuPY/Ef7h15LINuHs7E3QaUxGgfEDqO0sFGG4lvnx5OvTDVDOuyrujh+pb4LjbW/hbvThDhQJCeLsw98fCGy8h4Y8IsfttuMzt9fgR0nsKtRcNQ6hc2/8j9F1S1leqWjDUFrnOKTCDgyx2i5/Azt8C6Hj/5mg9ekDTPNgZl78SzP/qzvIxvLU7639st8rk9wa5kW7MinQHkvYJrPPZKEru1aRbVVYjCQVASVyBRNxNJB2e9lZxuAGu7QKLw6PyfPr/LC3Lpxv2Sbtaou7SDWY9E39i0TBlpIbHwg9A4OB7s+kfK2sfNn8u3i1+OaulseYpPbn73t4arU6iwhEupokyFEmeYOifjYk5jI40oCzIs= dell@DESKTOP-J0074GO"
  tags = {
    CreatedBy = "terraform"
  }
}
resource "aws_instance" "appserver" {
  ami                         = "ami-02a9d4cace1c5a38a"
  associate_public_ip_address = "true"
  instance_type               = "t3.micro"
  key_name                    = "aws_key_pair.deployer.id"
  vpc_security_group_ids      = ["aws_security_group.annu11.id"]
  subnet_id                   = "data.aws_subnet.ashok.id"
  tags = {
    Name = "appserver"
  }
}

