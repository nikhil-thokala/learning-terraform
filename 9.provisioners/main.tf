resource "aws_instance" "ec2" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags                   = {
    Name = "demo"
  }

  provisioner "remote-exec" {

    connection {
      host        = self.public_ip
      user        = "root"
      password    = "DevOps321"
    }

    inline = [
    "echo Hello"
    ]
  }
}