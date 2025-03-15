provider "aws" {
  region = "us-east-1"
  access_key = "AKIAQ4NXPYX6KL76Y3CI"
  secret_key = "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"
}

resource "aws_vpc" "vpc_teraform" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "terraform_vpc"
  }
}

resource "aws_subnet" "subnet_teraform" {
  vpc_id     = aws_vpc.vpc_teraform.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "terraform_subnet"
  }
}

#resource "<provider>_<resource_type>" "name" {
#    config options.......
#    key="value"
#    key2="another value"
#}