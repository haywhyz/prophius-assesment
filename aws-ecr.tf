// ECR MODULE

module "ecr" {
  source = "terraform-aws-modules/ecr/aws"

  repository_name = var.repository_name
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
