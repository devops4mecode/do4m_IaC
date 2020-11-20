terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-03faaf9cde2b38e9f"
  instance_type = "t2.micro"
}

