module "labels" {
  source  = "git::git@github.com:cloudlovers/terraform-google-labels.git"

  name        = var.name
  environment = var.environment
  label_order = var.label_order
}

resource "google_container_registry" "registry" {
  count = var.google_container_registry_enabled && var.module_enabled ? 1 : 0

  project  = var.project_id
  location = var.location
}

resource "google_storage_bucket_iam_member" "viewer" {
  count = var.google_storage_bucket_iam_member_enabled && var.module_enabled ? 1 : 0

  bucket = join("", google_container_registry.registry.*.id)
  role   = var.role
  member = var.user_member
}