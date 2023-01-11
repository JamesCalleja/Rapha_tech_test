module "ecs_definition_module" {
    source = "git::https://github.com/cloudposse/terraform-aws-ecs-container-definition.git?ref=tags/0.58.1"

    container_name  = "rapha_container"
    container_image = "httpd:latest"
    command         = ["httpd", "-D", "FOREGROUND"]
}