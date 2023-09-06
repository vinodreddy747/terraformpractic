variable "aws_vpc_vinod" {
  type        = string
  default     = "10.10.0.0/16"
  description = "this valu vpc"

}


variable "aws_subnet_names" {
  type    = list(string)
  default = ["vinod1", "vinod2", "annu1", "annu2", "ashok1", "ashok2"]

}

variable "aws_vinod_sgp_config" {
  type = object({
    name        = string
    description = string
    rules = list(object({
      type       = string
      from_port  = string
      to_port    = string
      protocol   = string
      cidr_block = string
    }))
  })
  description = "this is vinod sgp config"


}
variable "aws_annu_sgp_config" {
  type = object({
    name        = string
    description = string
    rules = list(object({
      type       = string
      from_port  = string
      to_port    = string
      protocol   = string
      cidr_block = string
    }))
  })
  description = "this is annu sgp config"

}
variable "subnet_avz" {
  type        = list(string)
  description = "These are azs"


}
variable "db_subnet_names" {
  type        = list(string)
  description = "these are database subnet names"

}
#variable "public_key_path" {
# type    = string
# ddefault = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDXMsUH5sm1qL62423bxj4oD1qv0hJ8CbzwDBoIoSc+WEs+HBAyaoXHr1xwM30gDJ2NbKE+Cx4sLqOdNuR2H9R9udCG/DooRUuDjdMl+prf0xIcAR7WS66UodnKwCVlCF4VugkSENu+YUHGj6Pa8Fh1IuPY/Ef7h15LINuHs7E3QaUxGgfEDqO0sFGG4lvnx5OvTDVDOuyrujh+pb4LjbW/hbvThDhQJCeLsw98fCGy8h4Y8IsfttuMzt9fgR0nsKtRcNQ6hc2/8j9F1S1leqWjDUFrnOKTCDgyx2i5/Azt8C6Hj/5mg9ekDTPNgZl78SzP/qzvIxvLU7639st8rk9wa5kW7MinQHkvYJrPPZKEru1aRbVVYjCQVASVyBRNxNJB2e9lZxuAGu7QKLw6PyfPr/LC3Lpxv2Sbtaou7SDWY9E39i0TBlpIbHwg9A4OB7s+kfK2sfNn8u3i1+OaulseYpPbn73t4arU6iwhEupokyFEmeYOifjYk5jI40oCzIs= dell@DESKTOP-J0074GO"
#}


variable "ashok_subnet_name" {
  type    = string
  default = "ashok1"

}
