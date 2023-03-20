data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "frontend" {
  count                  = length(var.instances)
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags = {
    Name = var.instances[count.index]
  }
}

variable "instances" {
  default = [ "cart", "catalogue", "mongodb", "payment", "mysql" ]
}

output "public-ip" {
  value = aws_instance.frontend.*.public_ip
}

