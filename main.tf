resource "oci_tenantmanagercontrolplane_subscription_mapping" "tenantmanagercontrolplane_subscription_mappings" {
  for_each = var.tenantmanagercontrolplane_subscription_mappings

  compartment_id  = each.value.compartment_id
  subscription_id = each.value.subscription_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

