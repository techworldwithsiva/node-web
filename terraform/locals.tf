locals {
  name   = "toptal-web"
  region = "ap-south-1"
  tags = {
    Terraform   = "true"
    Environment = "PROD"
    System      = "toptal"
    Component   = "web"
    Type        = "infra"
  }
    env_vars_web = [
    {
      "name" : "PORT",
      "value" : "3000"
    },
    {
      "name" : "API_HOST",
      "value" : "https://api.techietrainers.com"
    }
  ]
}
locals {
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  web_security_group_id = data.aws_ssm_parameter.web_security_group_id.value
  ecs_cluster_id = data.aws_ssm_parameter.ecs_cluster_id.value
  web_target_group_arn = data.aws_ssm_parameter.web_target_group_arn.value
  private_subnets = split(",", data.aws_ssm_parameter.private_subnets.value)[0]
}