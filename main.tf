terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-0ace6d6fe60486ca2c"
  instance_type = "t2.micro"

  tags = {
    Name = "hcp-server"
  }
}
