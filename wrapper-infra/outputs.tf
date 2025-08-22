# VPC outputs
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

# EKS outputs
output "eks_cluster_name" {
  value = module.eks.cluster_id
}
output "eks_node_group" {
  value = module.eks.node_groups
}
