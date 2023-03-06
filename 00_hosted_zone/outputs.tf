output "app_hosted_zone_id" {
  value = aws_route53_zone.app_hosted_zone.id
}

output "app_hosted_zone_name" {
  value = aws_route53_zone.app_hosted_zone.name
}