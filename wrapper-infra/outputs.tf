output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnets" {
  value = module.vpc.private_subnet_ids
}

#output "eks_cluster_name" {
 # value = module.eks.cluster_name
#}

#output "eks_cluster_endpoint" {
 # value = module.eks.cluster_endpoint
#}

#output "eks_node_groups" {
 # value = module.eks.node_groups
#}
