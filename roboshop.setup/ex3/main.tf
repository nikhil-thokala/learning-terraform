data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "instances" {
  for_each               = var.instances
  ami                    = data.aws_ami.ami.image_id
  instance_type          = each.value["type"]
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags = {
    Name = each.value["name"]
  }
}

variable "instances" {
  default = {
    catalogue = {
    name ="catalogue"
    type = "t3.micro"
    }
    user = {
      name = "user"
      type = "t3.small"
    }
  }
}

#output "ec2" {
#  value = aws_instance.instances["catalogue"].public_ip    # for specific ip address in a instance
#}
#
#output "ec2" {
#  value = [for k, v in aws_instances : v.public_ip]        #for all instances only ip address as list without names
#}


output "ec2" {
  value = [for k, v in aws_instance.instances : "${k} - ${v.public_ip}"]  #for all instances & ip address with names
}




#####immature code######
#variable "names" {
#  default = ["catalogue" , "user"]
#}
#variable "types" {
#  default = ["t3.micro" , "t3.small"]
#}
#
#
#resource "aws_instance" "frontend" {
#  count                  = length(var.names)
#  ami                    = data.aws_ami.ami.image_id
#  instance_type          = var.types[count.index]
#  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
#  tags = {
#    Name = var.names[count.index]
#  }
#}