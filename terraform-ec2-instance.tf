terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

variable "region" {
  type = string
}

variable "image_id" {
  type = string
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "terraform-example" {
  ami           = var.image_id
  instance_type = "t2.micro"
}
