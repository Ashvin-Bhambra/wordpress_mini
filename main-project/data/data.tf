data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "wordpress-state-store-1"
    key    = "net/terraform.tfstate"
    region = "eu-west-1"
  }
}

data "terraform_remote_state" "application" {
  backend = "s3"
  config = {
    bucket = "wordpress-state-store-1"
    key    = "app/terraform.tfstate"
    region = "eu-west-1"
  }
}