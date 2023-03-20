terraform {
  backend "s3" {
    bucket = "terraform-dvp"
    key    = "5.s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "ec2" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "+3.micro"
  vpc_security_group_ids = ["sg-0fc69f59ac03ac238"]
  tags                   = {
    Name = "test"
  }
}