resource "azurerm_container_registry" "acr" {
  name                          = "${var.prefix}containerregistry"
  resource_group_name           = azurerm_resource_group.aks_rg.name
  location                      = azurerm_resource_group.aks_rg.location
  sku                           = var.acr_sku
  public_network_access_enabled = true 
  admin_enabled                 = var.admin_enabled
}
