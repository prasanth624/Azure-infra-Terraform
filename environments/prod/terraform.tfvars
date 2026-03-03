# ──────────────────────────────────────
# Production Environment Configuration
# ──────────────────────────────────────
project_name = "myapp"
environment  = "prod"
location     = "East US 2"

# Network
vnet_address_space    = "10.1.0.0/16"
public_subnet_prefix  = "10.1.1.0/24"
private_subnet_prefix = "10.1.2.0/24"
allowed_ssh_cidrs     = ["203.0.113.0/24"] 

# Compute
vm_count             = 2
vm_size              = "Standard_D2s_v5"
admin_username       = "azureadmin"
admin_ssh_public_key = ""

# Storage
storage_replication_type = "GRS"
blob_containers          = ["data", "logs", "backups", "archives"]
file_shares = {
  "appdata"   = 256
  "sharedata" = 512
}
