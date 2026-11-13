output "registry_image_manifests_lookup_id" {
  description = "Map of id values across all registry_image_manifests_lookup, keyed the same as var.registry_image_manifests_lookup"
  value       = { for k, v in data.docker_registry_image_manifests.registry_image_manifests_lookup : k => v.id }
}
output "registry_image_manifests_lookup_auth_config" {
  description = "Map of auth_config values across all registry_image_manifests_lookup, keyed the same as var.registry_image_manifests_lookup"
  value       = { for k, v in data.docker_registry_image_manifests.registry_image_manifests_lookup : k => one(v.auth_config) }
  sensitive   = true
}
output "registry_image_manifests_lookup_insecure_skip_verify" {
  description = "Map of insecure_skip_verify values across all registry_image_manifests_lookup, keyed the same as var.registry_image_manifests_lookup"
  value       = { for k, v in data.docker_registry_image_manifests.registry_image_manifests_lookup : k => v.insecure_skip_verify }
}
output "registry_image_manifests_lookup_manifests" {
  description = "Map of manifests values across all registry_image_manifests_lookup, keyed the same as var.registry_image_manifests_lookup"
  value       = { for k, v in data.docker_registry_image_manifests.registry_image_manifests_lookup : k => v.manifests }
}
output "registry_image_manifests_lookup_name" {
  description = "Map of name values across all registry_image_manifests_lookup, keyed the same as var.registry_image_manifests_lookup"
  value       = { for k, v in data.docker_registry_image_manifests.registry_image_manifests_lookup : k => v.name }
}

