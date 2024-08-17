terraform {
  backend "s3" {
    bucket = "terraform-tatefile"
    region = "us-east-1"
    key = "remote_backend/terraform.tfstate"
  }
}
