module "sg" {
  source = "./sg"
}

variable "instances" {
  default = ""
}
module "ec2" {
  for_each      = var.instances
  source        = "./ec2"
  component     = each.value["name"]
  instance_type = each.value["type"]
  sg_id         = module.sg.sg_id
}

variable "instances" {
  default = ""
}
module "route53" {
  for_each      = var.instances
  source        = "./route53"
  component     = each.value["name"]
  private_ip    = module.ec2[each.value["name"]].private_ip
}

output "ec2" {
  value = module.ec2
}