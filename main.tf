provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "one" {
count =2
  ami           = "ami-0cae6d6fe6048ca2c"
  instance_type = "t2.micro"
  tags = {
    Name = "hcp-server"
  }
}
