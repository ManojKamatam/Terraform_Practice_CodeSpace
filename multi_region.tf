# Configure the AWS Provider
provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}
provider "aws" {
  alias = "us-west-2"
  region = "us-west-2"
}
resource "aws_instance" "example1" {
  ami                     = "ami-0ae8f15ae66fe8cda"
  instance_type           = "t2.micro"
  provider = aws.us-east-1
}
resource "aws_instance" "example2" {
  ami                     = "ami-02f9041628cc2f753"
  instance_type           = "t2.micro"
  provider = aws.us-west-2
}
