resource "aws_ecs_service" "rapha_service" {
    name        = "${var.application_name}-service"
    cluster     = aws_ecs_cluster.rapha_cluster.arn
    launch_type = "FARGATE"

    deployment_maximum_percent          = 200
    deployment_minimum_healthy_percent  = 0
    desired_count                       = 1 
    task_definition                     = "${aws_ecs_task_definition.rapha_task_definition.family}:${aws_ecs_task_definition.rapha_task_definition.revision}"

    network_configuration {
        assign_public_ip = true 
        security_groups  = [aws_security_group.rapha_sg.id,]
        subnets          = [aws_subnet.rapha_public_subnet_1.id, aws_subnet.rapha_public_subnet_2.id, aws_subnet.rapha_public_subnet_3.id]
    }
     

}