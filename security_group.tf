resource "aws_security_group" "rapha_sg" {
  name        = "rapha-sg"
  vpc_id      = data.aws_vpc.rapha_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}