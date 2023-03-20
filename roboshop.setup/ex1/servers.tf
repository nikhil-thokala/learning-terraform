resource "aws instance" "frontend" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags   = {
    Name = "frontend"
  }
}

resource "aws instance" "cart" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags   = {
    Name = "cart"
  }
}

resource "aws instance" "catalogue" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags                   = {
    Name = "catalogue"
  }
}


resource "aws instance" "user" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags   = {
    Name = "user"
  }
}

resource "aws instance" "shipping" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags   = {
    Name = "shipping"
  }
}

resource "aws instance" "payment" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags   = {
    Name = "payment"
  }
}

resource "aws instance" "mongodb" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags   = {
    Name = "mongodb"
  }
}

resource "aws instance" "mysql" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags   = {
    Name = "mysql"
  }
}

resource "aws instance" "redis" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags   = {
    Name = "redis"
  }
}

resource "aws instance" "rabbitmq" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0443b175ebd7809fa"]
  tags   = {
    Name = "rabbitmq"
  }
}

