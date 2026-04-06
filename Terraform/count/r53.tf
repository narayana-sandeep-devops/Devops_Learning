resource "aws_route53_record" "www" {
  count = 10
  zone_id = var.zone_id
  #interpolation
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.roboshop[count.index].private_ip]
}



resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  #interpolation
  name    = "roboshop.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.roboshop[index(var.instances, "frondend")].public_ip]
}