# CIDR block for the dev environment VPC
dev_cidr = "10.0.0.0/16"

# IAM Role for dev environment
dev_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
