resource "aws_ecs_cluster" "rapha_cluster" {
  name = var.application_name
}