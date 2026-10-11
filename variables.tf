variable "tenantmanagercontrolplane_subscription_mappings" {
  description = <<EOT
Map of tenantmanagercontrolplane_subscription_mappings, attributes below
Required:
    - compartment_id
    - subscription_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id  = string
    subscription_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

