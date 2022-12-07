module "network" {
  source  = "Azure/network/azurerm"
  version = "~>3.0"

  resource_group_name = azurerm_resource_group.this.name
  address_space       = "10.52.0.0/16"
  subnet_prefixes     = ["10.52.1.0/24", "10.52.2.0/24"]
  subnet_names        = ["subnet1", "subnet2"]
  depends_on          = [azurerm_resource_group.this]
}