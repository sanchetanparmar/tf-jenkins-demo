resource "azurerm_kubernetes_cluster" "aksdemo" {
  name                = "${var.prefix}-k8s"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.demo-k8s-resources.name
  dns_prefix          = "${var.prefix}-k8s"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D4s_v3"

  }

   identity {
    type = "SystemAssigned"
   }


  addon_profile {
    aci_connector_linux {
      enabled = false
    }

    azure_policy {
      enabled = false
    }

    http_application_routing {
      enabled = false
    }

    kube_dashboard {
      enabled = true
    }

    oms_agent {
      enabled = false
    }
  }
}
