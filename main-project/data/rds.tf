resource "aws_db_instance" "default" {
  allocated_storage      = var.allocated_storage
  max_allocated_storage  = var.max_allocated_storage
  db_name                = var.db_name
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  username               = var.username
  password               = aws_secretsmanager_secret_version.db_pass.secret_string
  storage_type           = var.storage_type
  parameter_group_name   = var.parameter_group_name
  skip_final_snapshot    = true
  identifier             = var.identifier
  db_subnet_group_name   = data.terraform_remote_state.network.outputs.db_subnet_group_name
  vpc_security_group_ids = [aws_security_group.RDS_SG.id] 
}
