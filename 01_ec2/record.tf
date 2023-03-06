resource "aws_route53_record" "app" {
  zone_id = var.hosted_zone_id
  name    = var.domain_name
  type    = "A"
  ttl     = "30"
  records =  aws_instance.workshop.public_ip
}
