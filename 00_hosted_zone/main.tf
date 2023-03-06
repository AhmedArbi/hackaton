resource "aws_route53_zone" "app_hosted_zone" {
  name = var.app_domain_name
}