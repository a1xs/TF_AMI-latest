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

data "aws_ami" "latest_ubuntu_22_x86-64" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
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

data "aws_ami" "latest_redhat-ent-11_x86-64" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name   = "name"
    values = ["RHEL-9.1.0_HVM-*-x86_64-2-*"]
  }
}

data "aws_ami" "latest_win-serv-2022_x86-64" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name   = "name"
    values = ["Windows_Server-2022-English-Full-Base-2022*"]
  }
}

data "aws_ami" "latest_amzn2-kernel510_x86-64" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }
}