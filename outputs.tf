output "id" {
  value       = join("", google_container_registry.registry.*.id)
  description = "The name of the bucket that supports the Container Registry."
}

output "self_link" {
  value       = join("", google_storage_bucket_iam_member.viewer.*.bucket)
  description = "The URI of the created resource."
}
