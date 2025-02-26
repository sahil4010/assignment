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

