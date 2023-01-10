variable vpc_id {
  type        = string
  default     = "vpc-065ebe047c3c477de"
  description = "description"
}

variable region {
    default = "eu-west-2"
}

variable application_name {
    default = "rapha-app"
}

# variable launch_type {
#     default = "FARGATE"
# }