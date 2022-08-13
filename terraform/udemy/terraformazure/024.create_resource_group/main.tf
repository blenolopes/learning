# create resouce group
resource "azurerm_resource_group" "tf_rg1" {
    name = "tf_rg1"
    location = "us-east"
}
