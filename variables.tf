variable "key_name" {
  type        = string
  default        = "lappy_key_rskp"
  description = "The name for ssh key, used for aws_launch_configuration"
}

variable "cluster_name" {
  type        = string
  default        = "ecs_demo_cluster"
  description = "The name of AWS ECS cluster"
}