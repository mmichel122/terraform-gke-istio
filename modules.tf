module "network" {
  source         = "./network"
  project_name   = var.project_name
  cidr_block     = var.cidr_block
  network_name   = var.network_name
  ssh_source_ips = var.ssh_source_ips
}

module "cluster" {
  source              = "./cluster"
  project_name        = var.project_name
  cluster_name        = var.cluster_name
  network_vpc         = module.network.network_vpc_uri
  subnetwork          = module.network.subnetwork_link
  location            = var.location
  nodes_size          = var.nodes_size
  autoscale_min_nodes = var.autoscale_min_nodes
  autoscale_max_nodes = var.autoscale_max_nodes
}
