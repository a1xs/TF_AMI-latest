variable "region" {}
variable "access_key" {}
variable "secret_key" {}

provider "aws" {
    region = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}

###############

data "aws_ami" "latest_ubuntu_20_x86-64" {
  most_recent = true
  owners = ["amazon"]
    filter {
      name   = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }
}

data "aws_ami" "latest_debian-11_x86-64" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name   = "name"
    values = ["debian-11-amd64-*"]
  }
}