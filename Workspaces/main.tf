provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = terraform.workspace == "dev" ? "arn:aws:iam::897722702132:role/dev-role" : "arn:aws:iam::897722702132:role/stage-role"
  }
}

variable "ami" {
  description = "ami"
}

variable "instance_type" {
  description = "instance type"
  type = string

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
  }
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_id = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, t2.micro)
}




