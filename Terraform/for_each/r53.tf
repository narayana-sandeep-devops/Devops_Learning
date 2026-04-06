resource "aws_route53_record" "www" {
  for_each = aws_instance.roboshop
  zone_id = var.zone_id
  #interpolation
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [each.value.private_ip]
}


resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  #interpolation
  name    = "roboshop.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [lookup(aws_instance.roboshop, "frontend").public_ip]
}