# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "var.resourcegroupname"
  location = "var.locationname"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "var.vnetname"
  resource_group_name = "var.resourcegroupname"
  location            = "var.locationname"
  address_space       = ["10.0.0.0/24"]
}