#CLUSTER VARIABLES


variable "region" {
  default = "eu-west-1"
}

variable "aws_access_key_id" {
  default = "AKIASNWYWY2Q4QOLUJKX"
}

variable "aws_secret_access_key" {
  default = "DS+x2xEjLdf8Ns3pzgwF1OM/WHozvxjhhwU2IDM2"
}

// ECR
variable "repository_name" {
  default = "prophius-repo"
}


// VPC 
variable "vpc_subnet" {
  default = "172.16.0.0/16"
}

variable "azs" {
  type    = list(string)
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "public_subnets" {
  type    = list(string)
  default = ["subnet-29cccf61", "subnet-c199a9a7", "subnet-7ab8c520"]
}

variable "tags" {
  type = map(string)

  default = {
    "Environment" = "Development"
  }
}


// EKS
variable "cluster_name" {
  type    = string
  default = "prophius-cluster"
}


//RDS VARIABLES
variable "rds_name" {
  default = "prophiusdb"
}

variable "db_port" {
  default = "3306"
}

variable "rds_identifer" {
  default = "prophius_db"
}


variable "rds_instance_class" {
  default = "db.t3.micro"
}

variable "db_uername" {
  default = "admin"
}

variable "db_password" {
  default = "P@ssword"
}

variable "enable_dashboard" {
  default = true
}

variable "vpc_name" {
  default = "pro_vpc"
}
