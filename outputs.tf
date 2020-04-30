output "fqdn" {
  value = "${azurerm_public_ip.k8s-master-publicip.fqdn}"
}
output "agent_ip_addr" {
  value = azurerm_network_interface.k8s-agent-nic.*.private_ip_address
  description= "private ip address"
}