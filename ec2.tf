provider "aws" {
  region = "us-west-1"
}
terraform {
  backend "s3" {
    bucket = "rigbucket"
    key    = "newfolder"
    region = "us-west-1"
  }
}
resource "aws_instance" "ashokserver" {
  ami           = "ami-032930428bf1abbff"
  instance_type = "t2.micro"

  tags = {
    Name = "Ashok"
  }
}
resource "aws_subnet" "prodsubnet" {
  vpc_id     = "vpc-d7a89bad"
  cidr_block = "172.31.124.0/24"

  tags = {
    Name = "prodsubnet"
  }
}