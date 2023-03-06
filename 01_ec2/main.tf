resource "aws_instance" "workshop" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = ["${aws_security_group.workshop_sg.id}"]
  subnet_id              = var.public_subnet
  iam_instance_profile   = aws_iam_role.workshop_role.name

  tags = merge(local.common_tags, { "Name" : "workshop" })
}

locals {
  common_tags = {
    CreatedBy   = "Terraform"
    AppName     = var.app_name
    Environment = var.account_name
  }
}
