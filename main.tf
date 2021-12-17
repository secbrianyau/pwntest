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
  access_key = "AKIAV5FX4CYP7UAN4SHU"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "DummyEC2Creation"
  }
}
