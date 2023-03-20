terraform {
  backend "s3" {
    bucket = "terraform-dvp"
    key    = "5.s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "ec2" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags                   = {
    Name = "demo"
  }
}