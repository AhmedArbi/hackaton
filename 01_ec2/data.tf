data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "terragrunt-state-base-resources-eu-west-1"
    region = "eu-west-1"
    key    = "dev/eu-west-1/common/vpc/terraform.tfstate"
  }
}

