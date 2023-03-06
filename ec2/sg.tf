resource "aws_security_group" "bastion_host_sg" {
  name        = "bastion-host-sg"
  description = "Security group for the bastion host."
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  tags = {
    Name = "bastion-host-sg"
  }

  ingress {
    description = "Allow SSH access on port 22 "
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}

