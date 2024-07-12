provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-06c68f701d8090592"
  instance_type = "t2.micro"

  tags = {
    Name = "ItTalent"
  }
}

resource "aws_s3_bucket" "my_bucket" {
	bucket = "thaiscarolainy"
	tags = {
		Name = "ittalent"
		Environment = "Test"
	}
}