resource "aws_security_group" "workshop_sg" {
  name        = "workshop-sg"
  description = "Security group for the workshop host."
  vpc_id      = var.vpc_id

  tags = {
    Name = "workshop-sg"
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

