provider "aws" {
  region = "us-east-1"
}

module "Variables_Modules" {
  source = "./Variables"
  ami_value = "ami-0ae8f15ae66fe8cda"
  instance_type_value = "t2.micro"
}

/*module "s3_bucket" {
    source = "./s3_bucket"
    bucket_name = "terraform-tatefile-1"  
}*/
