# RDS/Database Security Group
resource "aws_security_group" "RDS_SG" {
  name = "RDS_SG"
  tags = {
    Name = "RDS_SG"
  }
  vpc_id      = data.terraform_remote_state.network.outputs.vpc
}

data "terraform_remote_state" "app_state" {
  backend = "local"

  config = {
    path = "main-project/app/terraform.tfstate"
  }
}

output "remote_security_group_id" {
  value = data.terraform_remote_state.app_state.outputs.EC2_SG_id
}

resource "aws_security_group_rule" "rds_ingress" {
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  security_group_id        = aws_security_group.RDS_SG.id
  source_security_group_id = remote_security_group_id
}