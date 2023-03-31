data "aws_ssm_parameter" "vpc_id" {
  name = "/toptal/vpc/vpc_id"
}

data "aws_ssm_parameter" "web_security_group_id" {
  name = "/toptal/api-web/security_group_id"
}

data "aws_ssm_parameter" "ecs_cluster_id" {
  name = "/toptal/ecs/ecs_cluster_id"
}

data "aws_ssm_parameter" "web_target_group_arn" {
  name = "/toptal/alb/web_target_group_arn"
}

data "aws_ssm_parameter" "private_subnets" {
  name = "/toptal/vpc/private_subnets"
}