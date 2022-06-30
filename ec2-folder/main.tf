provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "LinuxVM" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
}