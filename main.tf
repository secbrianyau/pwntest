terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAV5FX4CYP46NO25FF"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "DummyEC2Creation"
  }
}
