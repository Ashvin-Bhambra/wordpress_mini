# RDS/Database Security Group
resource "aws_security_group" "RDS_SG" {
  name = "RDS_SG"
  tags = {
    Name = "RDS_SG"
  }
  vpc_id      = data.terraform_remote_state.network.outputs.vpc
}