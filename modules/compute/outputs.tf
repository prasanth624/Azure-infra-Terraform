output "vm_ids" {
  description = "IDs of the virtual machines"
  value       = azurerm_linux_virtual_machine.main[*].id
}

output "vm_names" {
  description = "Names of the virtual machines"
  value       = azurerm_linux_virtual_machine.main[*].name
}

output "vm_private_ips" {
  description = "Private IP addresses of the VMs"
  value       = azurerm_network_interface.vm[*].private_ip_address
}

output "vm_public_ips" {
  description = "Public IP addresses of the VMs"
  value       = var.assign_public_ip ? azurerm_public_ip.vm[*].ip_address : []
}

output "vm_admin_username" {
  description = "Admin username"
  value       = var.admin_username
}

output "generated_ssh_private_key" {
  description = "Generated SSH private key (only if auto-generated)"
  value       = var.admin_ssh_public_key == "" ? tls_private_key.ssh[0].private_key_pem : null
  sensitive   = true
}

output "nic_ids" {
  description = "IDs of the network interfaces"
  value       = azurerm_network_interface.vm[*].id
}
