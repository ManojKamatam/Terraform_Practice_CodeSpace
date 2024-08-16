provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./Variables"
  ami_value = "ami-04a81a99f5ec58529"
  instance_type_value = "t2.micro"
}
