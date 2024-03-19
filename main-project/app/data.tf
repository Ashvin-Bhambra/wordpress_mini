data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "wordpress_ami"
    values = ["amzn2-ami-hvm*"]
  }
}

module "main" {
    source = "../"
}