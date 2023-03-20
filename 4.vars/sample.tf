variable "sample" {
  default = "Hello World"  # strings must be double quote
}

output "sample" {
  value = var.sample
}


variable "sample01" {
  default = 100           # no need to quote with single or double for numbers and boolean
}

output "sample01" {
  value = var.sample
}

variable "sample1" {}

output "sample1" {       # input is given in terraform.vars file
  value = var.sample1
}

variable "cli" {}

output "cli" {           # input have to provide in cli
  value = var.cli
}

variable "input" {}      # no input given



variable "sample5" {
  default = "hello"
}

variable "sample6" {
  default = [
  "hello",
  100,
  true,
  "world"
  ]
}

variable "sample7" {
  default = {
    String = "Hello",
    number = 100
    boolean = true
  }
}


output "types" {
  value = "Variable sample5 - ${var.sample5} ,first Value in list - ${var.sample6[0]}, Boolean value of Map - ${var.sample7[boolean]}"
}


