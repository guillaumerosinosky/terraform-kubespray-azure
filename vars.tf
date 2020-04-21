#variable "azure_tenant_id" {}

#variable "azure_subscription_id" {}

variable "contact" {}

variable "azure_location" {
  default = "eastus"
}

variable "resource_group_name" {
  default = "kubespray"
}

variable "resource_name_prefix" {
  default = "kubespray"
}

variable "vnet_cidr" {
  default = "10.10.0.0/16"
}

variable "master_subnet_cidr" {
  default = "10.10.1.0/24"
}

variable "agent_subnet_cidr" {
  default = "10.10.2.0/24"
}

variable "api_loadbalancer_frontend_port" {
  default = "443"
}

variable "api_loadbalancer_backend_port" {
  default = "443"
}

variable "domain_name_label" {
  default = "kubesprayxx"
}

variable "admin_public_key" {}

variable "admin_username" {
  default = "centos"
}

variable "master_count" {
  default = "1"
}

variable "master_vm_size" {
  default = "Standard_B1ms"
}

variable "master_vm_image_publisher" {
  default = "OpenLogic"
}

variable "master_vm_image_offer" {
  default = "CentOS"
}

variable "master_vm_image_sku" {
  default = "7-CI"
}

variable "master_vm_image_version" {
  default = "latest"
}

variable "master_vm_osdisk_type" {
  default = "Standard_LRS"
}

variable "master_vm_osdisk_size_in_gb" {
  default = "30"
}

variable "agent_count" {
  default = "2"
}

variable "agent_vm_size" {
  default = "Standard_B1ms"
}

variable "agent_vm_image_publisher" {
  default = "OpenLogic"
}

variable "agent_vm_image_offer" {
  default = "CentOS"
}

variable "agent_vm_image_sku" {
  default = "7-CI"
}

variable "agent_vm_image_version" {
  default = "latest"
}

variable "agent_vm_osdisk_type" {
  default = "Standard_LRS"
}

variable "agent_vm_osdisk_size_in_gb" {
  default = "30"
}
