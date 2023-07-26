##############################################################
# Data sources to get VPC, subnets and security group details
##############################################################

resource "aws_security_group" "sec_grp_rds" {

  vpc_id = module.vpc.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}

module "db" {
  source = "terraform-aws-modules/rds/aws"

  identifier = var.rds_identifer

  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = var.rds_instance_class
  allocated_storage = 5

  name     = var.rds_name
  username = var.db_uername
  port     = var.db_port
  password = var.db_password

  iam_database_authentication_enabled = true

  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"

  tags = {
    Owner       = "user"
    Environment = "dev"
  }

  create_db_subnet_group = true
 
  family = "mysql5.7"
  major_engine_version = "5.7"
  deletion_protection = true

}
