

aws_vinod_sgp_config = {
  name        = "vinodsgp"
  description = "this is vinodspg "
  rules = [{
    type       = "ingress"
    from_port  = 80
    to_port    = 80
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    },

    {
      type       = "ingress"
      from_port  = 22
      to_port    = 22
      protocol   = "tcp"
      cidr_block = "0.0.0.0/0"
    },
    {
      type       = "egress"
      from_port  = 0
      to_port    = 65534
      protocol   = "-1"
      cidr_block = "0.0.0.0/0"



    }

  ]
}
aws_annu_sgp_config = {
  name        = "annusgp"
  description = "this is annusgp "
  rules = [{
    type       = "ingress"
    from_port  = 8080
    to_port    = 8080
    protocol   = "tcp"
    cidr_block = "10.10.0.0/16"
    },

    {
      type       = "ingress"
      from_port  = 22
      to_port    = 22
      protocol   = "tcp"
      cidr_block = "0.0.0.0/0"
    },
    {
      type       = "egress"
      from_port  = 0
      to_port    = 65534
      protocol   = "-1"
      cidr_block = "10.10.0.0/16"



    }

  ]
}

subnet_avz      = ["ap-south-1a", "ap-south-1b", "ap-south-1a", "ap-south-1b", "ap-south-1a", "ap-south-1b"]
db_subnet_names = ["annu1"]