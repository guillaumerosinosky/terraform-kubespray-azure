#variable "azure_tenant_id" {}

#variable "azure_subscription_id" {}

variable "contact" {
  default = "Guillaume"
}

variable "project" {
  default = "test"
}

variable "azure_location" {
  default = "westeurope"
}

variable "resource_group_name" {
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
  default = "ubuntu"
}

variable "master_count" {
  default = "1"
}

variable "master_vm_size" {
  default = "Standard_B1ms"
}

variable "master_vm_image_publisher" {
  default = "Canonical"
}

variable "master_vm_image_offer" {
  default = "UbuntuServer"
}

variable "master_vm_image_sku" {
  default = "18.04-LTS"
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
  default = "1"
}

variable "agent_vm_size" {
  default = "Standard_B1ms"
}

variable "agent_vm_image_publisher" {
  default = "Canonical"
}

variable "agent_vm_image_offer" {
  default = "UbuntuServer"
}

variable "agent_vm_image_sku" {
  default = "18.04-LTS"
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

variable "inventory_file" {
  default = "host.ini"
}