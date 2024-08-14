provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example1" {
  ami                     = "ami-0ae8f15ae66fe8cda"
  instance_type           = "t2.micro"
}
resource "aws_s3_bucket" "example1" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
