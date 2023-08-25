variable "aws_vpc_vinod" {
  type        = string
  default     = "10.10.0.0/16"
  description = "this valu vpc"

}


variable "aws_subnet_names" {
  type    = list(string)
  default = ["vinod1", "vinod2", "annu1", "annu2","ashok1","ashok2"]

}

