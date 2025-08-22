# VPC variables
variable "azs" { type = list(string) }
variable "enable_dns_hostnames" { type = bool }
variable "enable_dns_support" { type = bool }
variable "map_public_ip_on_launch" { type = bool }
variable "private_destination_cidr_block" { type = string }
variable "public_destination_cidr_block" { type = string }
variable "region" { type = string }
variable "single_nat_gateway" { type = bool }
variable "vpc_cidr" { type = string }
variable "vpc_name" { type = string }

# EKS variables
variable "ami_type" { type = string }
variable "capacity_type" { type = string }
variable "cluster_name" { type = string }
variable "cluster_version" { type = string }
variable "coredns_version" { type = string }
variable "desired_size" { type = number }
variable "disk_size" { type = number }
variable "instance_types" { type = list(string) }
variable "kube_proxy_version" { type = string }
variable "labels" { type = map(string) }
variable "max_size" { type = number }
variable "min_size" { type = number }
variable "node_group_name" { type = string }
variable "tags" { type = map(string) }
variable "vpc_cni_version" { type = string }
