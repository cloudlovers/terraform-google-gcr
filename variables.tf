variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "name" {
  type    = string
  default = ""
}

variable "module_enabled" {
  type        = bool
  default     = true
  description = "Flag to control the iam creation."
}


variable "google_container_registry_enabled" {
  type        = bool
  default     = true
  description = "Flag to control the iam creation."
}

variable "google_storage_bucket_iam_member_enabled" {
  type        = bool
  default     = true
  description = "Flag to control the iam creation."
}

variable "location" {
  type        = string
  default     = ""
  description = "The location of the registry. One of ASIA, EU, US or not specified."
}

variable "project_id" {
  type        = string
  default     = ""
  description = "Google Cloud project ID"
}

variable "role" {
  type    = string
  default = ""
}

variable "user_member" {
  type    = string
  default = ""
}