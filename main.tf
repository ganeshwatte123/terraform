provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "three" {
count = 3
  ami           = "ami-0dc3a08bd93f84a35"
  instance_type = "t2.micro"
  tags = {
    Name = "abc-server"
  }
 }
