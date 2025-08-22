module "vpc-eks" {
  source  = "spacelift.io/eswar-sudo/vpc-eks/default"
  version = "0.1.0"

  # Required inputs
  ami_type                       = # string
  azs                            = # list(string)
  capacity_type                  = # string
  cluster_name                   = # string
  cluster_version                = # string
  coredns_version                = # string
  desired_size                   = # number
  disk_size                      = # number
  enable_dns_hostnames           = # bool
  enable_dns_support             = # bool
  instance_types                 = # list(string)
  kube_proxy_version             = # string
  labels                         = # map(string)
  map_public_ip_on_launch        = # bool
  max_size                       = # number
  min_size                       = # number
  node_group_name                = # string
  private_destination_cidr_block = # string
  public_destination_cidr_block  = # string
  region                         = # string
  single_nat_gateway             = # bool
  tags                           = # map(string)
  vpc_cidr                       = # string
  vpc_cni_version                = # string
  vpc_name                       = # string
}
