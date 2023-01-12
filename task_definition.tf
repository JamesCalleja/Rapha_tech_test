resource "aws_ecs_task_definition" "rapha_task_definition" {
  container_definitions    = module.ecs_container_definition_module.json_map_encoded_list
  family                   = "${var.application_name}-family"
  requires_compatibilities = ["FARGATE", ]

  cpu          = "256"
  memory       = "512"
  network_mode = "awsvpc"
}