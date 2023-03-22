resource "aws_route53_record" "record" {
  zone_id = "Z0834449398HDP390BFHD"
  name    = "${var.component}-dev.devopsjob.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}