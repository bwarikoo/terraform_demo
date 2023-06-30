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

resource "aws_instance" "auto_instance" {
  count         = 2
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = "automated_instance_${count.index}"
  }
}
