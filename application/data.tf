
data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "wordpress-state-store-1"
    key    = "network/terraform.tfstate"
    region = "eu-west-1"
  }
}