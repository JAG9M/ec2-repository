provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "LinuxVM" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}