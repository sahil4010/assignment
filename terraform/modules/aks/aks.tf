resource "azurerm_kubernetes_cluster" "k8" {
  name                = "${var.name}-cluster"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.name}-dns"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
#    vnet_subnet_id  = var.vnet_subnet_id
  }

  identity {
    type = var.id-type
  }
}
