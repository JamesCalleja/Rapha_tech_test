data "aws_vpc" "rapha_vpc" {
    id = var.vpc_id
}

data "aws_subnet_ids" "rapha_subnet_ids" {
    vpc_id = var.vpc_id
}

