output "registry_image_manifests_lookup_id" {
  description = "Map of id values across all registry_image_manifests_lookup, keyed the same as var.registry_image_manifests_lookup except keys with no id are omitted"
  value       = { for k, v in data.docker_registry_image_manifests.registry_image_manifests_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "registry_image_manifests_lookup_auth_config" {
  description = "Map of auth_config values across all registry_image_manifests_lookup, keyed the same as var.registry_image_manifests_lookup except keys with no auth_config are omitted"
  value       = { for k, v in data.docker_registry_image_manifests.registry_image_manifests_lookup : k => one(v.auth_config) if v.auth_config != null && length(v.auth_config) > 0 }
  sensitive   = true
}
output "registry_image_manifests_lookup_insecure_skip_verify" {
  description = "Map of insecure_skip_verify values across all registry_image_manifests_lookup, keyed the same as var.registry_image_manifests_lookup except keys with no insecure_skip_verify are omitted"
  value       = { for k, v in data.docker_registry_image_manifests.registry_image_manifests_lookup : k => v.insecure_skip_verify if v.insecure_skip_verify != null }
}
output "registry_image_manifests_lookup_manifests" {
  description = "Map of manifests values across all registry_image_manifests_lookup, keyed the same as var.registry_image_manifests_lookup except keys with no manifests are omitted"
  value       = { for k, v in data.docker_registry_image_manifests.registry_image_manifests_lookup : k => v.manifests if v.manifests != null && length(v.manifests) > 0 }
}
output "registry_image_manifests_lookup_name" {
  description = "Map of name values across all registry_image_manifests_lookup, keyed the same as var.registry_image_manifests_lookup except keys with no name are omitted"
  value       = { for k, v in data.docker_registry_image_manifests.registry_image_manifests_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}

