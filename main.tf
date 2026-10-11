data "docker_registry_image_manifests" "registry_image_manifests_lookup" {
  for_each = var.registry_image_manifests_lookup

  name                 = each.value.name
  insecure_skip_verify = each.value.insecure_skip_verify

  dynamic "auth_config" {
    for_each = each.value.auth_config != null ? [each.value.auth_config] : []
    content {
      address  = auth_config.value.address
      password = auth_config.value.password
      username = auth_config.value.username
    }
  }
}

