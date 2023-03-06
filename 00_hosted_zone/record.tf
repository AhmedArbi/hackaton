resource "aws_route53_record" "this" {
  zone_id = var.default_hosted_zone_id
  name    = var.app_domain_name
  type    = "NS"
  ttl     = "30"
  records = aws_route53_zone.app_hosted_zone.name_servers
}
