terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.44.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "restored" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name

  tags = {
    Name = "RestoredInstance"
  }

  lifecycle {
    ignore_changes = [ami]
  }
}