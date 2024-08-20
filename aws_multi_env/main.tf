provider "aws" {
  region = "us-east-1"
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
  name = "dev-role"
  assume_role_policy = data.aws_iam_policy_document.dev_role.json
}

resource "aws_iam_role" "stage_role" {
  name = "stage-role"
  assume_role_policy = data.aws_iam_policy_document.stage_role.json
}
