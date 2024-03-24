terraform {
  backend "s3" {
    bucket = "wordpress-state-store-1"
    key    = "data/terraform.tfstate"
    region = "eu-west-1"
  }
}