terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "swiggydemoinfrakush"    # तुमचा organization name इथे
    workspaces {
      name = "terraform"                     # तुमचा workspace name
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  ami           = "ami-0cae6d6fe6048ca2c"
  instance_type = "t2.micro"

  tags = {
    Name = "hcp-server"
  }
}
