output "id" {
  value       = module.container_registry.id
  description = "The ID of the s3 bucket."
}

output "self_link" {
  value = module.container_registry.self_link
}