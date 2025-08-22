#####################################################
# VPC Module
#####################################################
module "vpc" {
  source  = "spacelift.io/eswar-sudo/vpc-modules/default"
  version = "0.1.0"

  azs                            = var.azs
  enable_dns_hostnames           = var.enable_dns_hostnames
  enable_dns_support             = var.enable_dns_support
  map_public_ip_on_launch        = var.map_public_ip_on_launch
  private_destination_cidr_block = var.private_destination_cidr_block
  public_destination_cidr_block  = var.public_destination_cidr_block
  region                         = var.region
  single_nat_gateway             = var.single_nat_gateway
  vpc_cidr                       = var.vpc_cidr
  vpc_name                       = var.vpc_name
}

#####################################################
# EKS Module
#####################################################
module "eks" {
  source  = "spacelift.io/eswar-sudo/eks/default"
  version = "0.1.0"

  ami_type           = var.ami_type
  capacity_type      = var.capacity_type
  cluster_name       = var.cluster_name
  cluster_version    = var.cluster_version
  coredns_version    = var.coredns_version
  desired_size       = var.desired_size
  disk_size          = var.disk_size
  instance_types     = var.instance_types
  kube_proxy_version = var.kube_proxy_version
  labels             = var.labels
  max_size           = var.max_size
  min_size           = var.min_size
  node_group_name    = var.node_group_name
  private_subnet_ids = module.vpc.private_subnets_ids
  region             = var.region
  tags               = var.tags
  vpc_cni_version    = var.vpc_cni_version
  vpc_id             = module.vpc.vpc_id
}
