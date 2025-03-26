provider "aws" {
  region = "us-east-1"
  access_key = "********************"
  secret_key = "*********************"
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
