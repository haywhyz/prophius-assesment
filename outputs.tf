
# AWS EKS Output
output "cluster_name" {
  description = "Amazon Web Service EKS Cluster Name"
  value       = module.eks.cluster_name
}


# AWS VPC Output

output "azs" {
  value = module.vpc.azs
}

output "default_vpc_id" {
  value = module.vpc.default_vpc_id
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_instance_tenancy" {
  value = module.vpc.vpc_instance_tenancy
}

output "vpc_main_route_table_id" {
  value = module.vpc.vpc_main_route_table_id
}

output "igw_id" {
  value = module.vpc.igw_id
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "private_subnets_cidr_blocks" {
  value = module.vpc.private_subnets_cidr_blocks
}

output "private_route_table_ids" {
  value = module.vpc.private_route_table_ids
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "public_route_table_ids" {
  value = module.vpc.public_route_table_ids
}


# AWS RDS Output

/* output "name" {
  value = module.db.name
}

output "username" {
  value = module.db.username
}

output "identifier" {
  value = module.db.identifier
} */


#aws ECR Output

/* output "repository_name" {
  description = "The URL of the repository"
  value = module.ecr.repository_name
} */
