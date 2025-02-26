# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "name" {
  type 	      = string
  description = "A prefix used for all resources in this example"
  default     = "k8"
}

variable "location" {
  type        = string
  description = "The Azure Region in which all resources in this example should be provisioned"
  default     = "centralindia"
}

variable "address_space" {
  type		= string
  description   = "address space of your virtual net"
  default 	= "10.0.0.0/16"
}

variable "address_prefix" {
  type 		= string
  description 	= "your subnet range or ip's"
  default 	= "10.0.1.0/24"
}

variable "node_count" {
  type 		= number
  description 	= "number of nodes you want to make"
  default   = 2
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


