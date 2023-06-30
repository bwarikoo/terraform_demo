terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

locals {
  instance_names = toset(["Boky", "Naman"])
}

resource "aws_instance" "auto_instance" {
  for_each      = local.instance_names
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = each.key
  }
}
