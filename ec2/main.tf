resource "aws_instance" "bastion_host" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = ["${aws_security_group.bastion_host_sg.id}"]
  subnet_id              = data.terraform_remote_state.vpc.outputs.public_subnets[0]
  iam_instance_profile   = aws_iam_role.bastion_role.name

  tags = merge(local.common_tags, { "Name" : "prod-bastion-host" },
    { "AUTO_DNS_NAME" : "${data.terraform_remote_state.route53.outputs.record_name}" },
    { "AUTO_DNS_ZONE" : "${data.terraform_remote_state.route53.outputs.hosted_zone_id}" }
  )
}

locals {
  common_tags = {
    CreatedBy   = "Terraform"
    AppName     = var.app_name
    Environment = var.account_name
  }
}
