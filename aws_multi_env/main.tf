
provider "aws" {
  region = "us-east-1"
}

variable "cidr" {
  description = "CIDR block"
  type        = string
}

variable "role_policy" {
  description = "IAM Role Policy for environment"
  type        = string
}

resource "aws_vpc" "vpc" {
  cidr_block = var.cidr
  tags = {
    Name = "vpc"
  }
}

resource "aws_iam_role" "role" {
  name               = "role"
  assume_role_policy = var.role_policy
}

