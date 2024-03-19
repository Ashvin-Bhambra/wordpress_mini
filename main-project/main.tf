terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.13.1"
        }
    }
}

provider "aws"{
    region = "eu-west-1"
}

module "app" {
    source = "./app"
}

module "data" {
    source = "./data"
}

module "net" {
    source = "./net"
}