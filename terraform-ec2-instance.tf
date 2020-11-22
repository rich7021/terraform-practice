terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "terraform-example" {
  ami           = "ami-04bf6dcdc9ab498ca"
  instance_type = "t2.micro"
}
