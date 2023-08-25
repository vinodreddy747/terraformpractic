resource "aws_security_group" "vinod11" {
  name        = var.aws_vinod_sgp_config.name
  description = var.aws_vinod_sgp_config.description
  vpc_id      = aws_vpc.vpc_id.id
}

resource "aws_security_group_rule" "websg_rules" {
  count             = length(var.aws_vinod_sgp_config.rules)
  security_group_id = aws_security_group.vinod11.id
  type              = var.aws_vinod_sgp_config.rules[count.index].type
  from_port         = var.aws_vinod_sgp_config.rules[count.index].from_port
  to_port           = var.aws_vinod_sgp_config.rules[count.index].to_port
  protocol          = var.aws_vinod_sgp_config.rules[count.index].protocol
  cidr_blocks       = [var.aws_vinod_sgp_config.rules[count.index].cidr_block]

}

resource "aws_security_group" "annu11" {
  name        = var.aws_annu_sgp_config.name
  description = var.aws_annu_sgp_config.description
  vpc_id      = aws_vpc.vpc_id.id
}

resource "aws_security_group_rule" "annu_rules" {
  count             = length(var.aws_annu_sgp_config)
  security_group_id = aws_security_group.annu11.id
  type              = var.aws_annu_sgp_config.rules[count.index].type
  from_port         = var.aws_annu_sgp_config.rules[count.index].from_port
  to_port           = var.aws_annu_sgp_config.rules[count.index].to_port
  protocol          = var.aws_annu_sgp_config.rules[count.index].protocol
  cidr_blocks        = [var.aws_annu_sgp_config.rules[count.index].cidr_block]
}