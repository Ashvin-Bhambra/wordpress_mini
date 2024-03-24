output "rds_db_name" {
  value = aws_db_instance.default.db_name
}

output "rds_address" {
  value = aws_db_instance.default.address
}

output "rds_SG_id" {
    value = aws_security_group.RDS_SG.id
}