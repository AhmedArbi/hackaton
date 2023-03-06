data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "terragrunt-state-re7-imputy-resources"
    region = "eu-west-1"
    key    = "re7/eu-west-1/common/vpc/terraform.tfstate"
  }
}

data "terraform_remote_state" "route53" {
  backend = "s3"

  config = {
    bucket = "terragrunt-state-re7-imputy-resources"
    region = "eu-west-1"
    key    = "re7/eu-west-1/common/bastion/route53/terraform.tfstate"
  }
}
