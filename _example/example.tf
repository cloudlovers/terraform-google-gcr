provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
  zone    = var.gcp_zone
}


module "container_registry" {
  source = "../"

  name        = "test"
  environment = var.environment
  label_order = var.label_order

  module_enabled                           = true
  google_container_registry_enabled        = true
  google_storage_bucket_iam_member_enabled = true
  project_id                               = var.gcp_project_id
  location                                 = "EU"
  role                                     = "roles/storage.objectViewer"
  user_member                              = "user:"

}
