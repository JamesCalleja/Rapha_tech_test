resource "aws_lb" "rapha_nlb" {
  name               = "rapha-nlb"
  internal           = false
  load_balancer_type = "network"
  subnets            = [aws_subnet.rapha_public_subnet_1.id, aws_subnet.rapha_public_subnet_2.id, aws_subnet.rapha_public_subnet_3.id]

  enable_deletion_protection = false
}

resource "aws_lb_target_group" "rapha_tg" {
  name        = "rapha-tg"
  port        = 80
  protocol    = "TCP"
  target_type = "ip"
  vpc_id      = aws_vpc.rapha_vpc.id
}

resource "aws_lb_listener" "rapha_listener_80" {
  load_balancer_arn = aws_lb.rapha_nlb.arn
  port              = "80"
  protocol          = "TCP"

  default_action {
    target_group_arn = aws_lb_target_group.rapha_tg.arn
    type             = "forward"
  }
}
