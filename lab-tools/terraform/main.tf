terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-central-1"
  }



resource "aws_instance" "podman" {
  ami           = "ami-0a3ca859119c1ee3c"
  instance_type = "t2.2xlarge"
  count = "15"
  subnet_id = "subnet-0cadb6c1b3ba83db9"
  key_name = "id_rsa.pub"

  tags = {
    Name = "podman"
  }

}