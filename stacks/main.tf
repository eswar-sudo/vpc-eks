module "vpc-eks" {
  source  = "spacelift.io/eswar-sudo/vpc-eks/default"
  version = "0.1.0"

 # VPC inputs
  azs                            = ["us-east-1a", "us-east-1b", "us-east-1c"]
  enable_dns_hostnames           = true
  enable_dns_support             = true
  map_public_ip_on_launch        = false
  private_destination_cidr_block = "0.0.0.0/0"
  public_destination_cidr_block  = "0.0.0.0/0"
  region                         = "us-east-1"
  single_nat_gateway             = true
  vpc_cidr                       = "10.0.0.0/16"
  vpc_name                       = "dev-vpc"

  # EKS inputs
  ami_type           = "AL2_x86_64"
  capacity_type      = "ON_DEMAND"
  cluster_name       = "dev-eks"
  cluster_version    = "1.29"
  coredns_version    = "v1.11.1-eksbuild.4"
  desired_size       = 1
  disk_size          = 20
  instance_types     = ["t3.medium"]
  kube_proxy_version = "v1.29.0-eksbuild.2"
  labels             = { "env" = "dev" }
  max_size           = 3
  min_size           = 1
  node_group_name    = "dev-ng"
  tags = {
    Environment = "dev"
    Owner       = "team-x"
  }
  vpc_cni_version = "v1.18.1-eksbuild.3"
}

# Example consumer outputs
#output "my_cluster" {
 # value = module.infra.eks_cluster_name
#}

#output "my_vpc" {
 # value = module.infra.vpc_id
#}
