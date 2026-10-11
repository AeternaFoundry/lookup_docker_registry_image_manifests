variable "registry_image_manifests_lookup" {
  description = <<EOT
Map of registry_image_manifests_lookup, attributes below
Required:
    - name
Optional:
    - insecure_skip_verify
    - auth_config (block):
        - address (required)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    name                 = string
    insecure_skip_verify = optional(bool)
    auth_config = optional(object({
      address  = string
      password = optional(string)
      username = optional(string)
    }))
  }))
}

