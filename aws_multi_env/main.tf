
provider "aws" {
  region = "us-east-1"
}

variable "dev_cidr" {
  description = "CIDR block for the dev environment"
  type        = string
}

variable "stage_cidr" {
  description = "CIDR block for the stage environment"
  type        = string
}

variable "dev_role_policy" {
  description = "IAM Role Policy for the dev environment"
  type        = string
}

variable "stage_role_policy" {
  description = "IAM Role Policy for the stage environment"
  type        = string
}
resource "aws_vpc" "dev" {
  cidr_block = var.dev_cidr
  tags = {
    Name = "dev-vpc"
  }
}

resource "aws_vpc" "stage" {
  cidr_block = var.stage_cidr
  tags = {
    Name = "stage-vpc"
  }
}

resource "aws_iam_role" "dev_role" {
  name               = "dev-role"
  assume_role_policy = var.dev_role_policy
}

resource "aws_iam_role" "stage_role" {
  name               = "stage-role"
  assume_role_policy = var.stage_role_policy
}

