resource "aws_eip" "lb" {
  instance = aws_instance.workshop.id
  vpc      = true
}
