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