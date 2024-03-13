# RDS/Database Security Group
resource "aws_security_group" "RDS_SG" {
  name = "RDS_SG"
  tags = {
    Name = "RDS_SG"
  }
  vpc_id      = data.terraform_remote_state.network.outputs.vpc
}

resource "aws_security_group_rule" "rds_ingress" {
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  security_group_id        = aws_security_group.RDS_SG.id
  source_security_group_id = aws_security_group.EC2_SG.id
}