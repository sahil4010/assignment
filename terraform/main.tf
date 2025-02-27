terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.90.0"
    }
  }
  required_version = ">= 1.1.0"
}



provider "azurerm" {
  features {}
}

module "rg"{
  source 	= "./modules/rg"
  name 		= var.name
  location	= var.location
}

output "rg_name"{
  value = module.rg.azurerm_resource_group.rg.rg_name
}

module "vnet" {
  source 	      = "./modules/vnet"
  location 	      = module.rg.rg_location
  resource_group_name = module.rg.rg_name
  name		      = var.name
  address_space	      = var.address_space
}

module "subnet" {
  source 	 = "./modules/subnet"
  name 		 = var.name
  resource_group_name = module.rg.rg_name
  virtual_network_name		 = module.vnet.vnet_name
  address_prefix = var.address_prefix
}

module "aks" {
  source 	 = "./modules/aks"
  name 		 = var.name
  location       = module.rg.rg_location
  resource_group_name     = module.rg.rg_name
  node_count	 = var.node_count
  vm_size 	 = var.vm_size
  id-type	 = var.id-type
#  vnet_subnet_id = module.subnet.id
}

output "aks_name"{
  value = module.aks.azurerm_kubernetes_cluster.k8.name
}


