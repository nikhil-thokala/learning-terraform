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

variable "input" {}