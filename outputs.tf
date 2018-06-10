output "fqdn" {
  value = "${azurerm_public_ip.k8s-master-publicip.fqdn}"
}
