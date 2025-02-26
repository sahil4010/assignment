variable "name" {
  type 	      = string
  description = "A prefix used for all resources in this example"
  default     = "k8"
}

variable "node_count" {
  type 		= number
  description 	= "number of nodes you want to make"
}

variable "vm_size" {
  type 		= string
  description	= "type of vm you want to have for cluster"
  default	= "Standard_DS2_v2"
}


variable "id-type" {
 type 		= string
 description  	= "who will access this"
 default	= "SystemAssigned"
}

#variable "vnet_subnet_id" {
#  type 		= string
#}

variable "location" {}
variable "resource_group_name" {}
