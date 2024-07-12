provider "aws" {
  region = "us-east-2"
}

data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type

  tags = {
    Name = "ItTalent"
  }
}

resource "aws_s3_bucket" "my_bucket" {
	bucket = "thaiscarolainy"
	tags = {
		Name = "ittalent"
	}
}