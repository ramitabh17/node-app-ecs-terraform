module "vpc" {
  source         = "terraform-aws-modules/vpc/aws"
  version        = "~> 3.0"
  name           = "test_ecs_provisioning"
  cidr           = "10.0.0.0/16"
  azs            = ["ap-south-1a", "ap-south-1b"]
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  tags = {
    "env"       = "dev"
    "createdBy" = "ramitabh"
  }

}

data "aws_vpc" "main" {
  id = module.vpc.vpc_id
}