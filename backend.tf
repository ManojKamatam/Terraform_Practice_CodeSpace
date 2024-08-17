terraform {
  backend "s3" {
    bucket = "terraform-tatefile-1"
    region = "us-east-1"
    key = "remote_backend/terraform.stfstate"
  }
}
