variable "allocated_storage" {
  description = "The amount of storage (in gigabytes) to be initially allocated for the database"
}

variable "max_allocated_storage" {
  description = "The maximum amount of storage (in gigabytes) that can be allocated for the database"
}

variable "db_name" {
  description = "The name of the database to be created"
}

variable "engine" {
  description = "The type of database engine to be used"
}

variable "engine_version" {
  description = "The version number of the database engine"
}

variable "instance_class" {
  description = "The instance class to use for the RDS instance"
}

variable "username" {
  description = "The username for the database administrator"
}

variable "storage_type" {
  description = "The storage type for the RDS instance (e.g., 'gp2')"
}

variable "parameter_group_name" {
  description = "The name of the parameter group to associate with the RDS instance"
}

variable "identifier" {
  description = "The identifier for the RDS instance"
}