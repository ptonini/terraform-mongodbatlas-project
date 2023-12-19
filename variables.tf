variable "org" {}

variable "name" {}

variable "provider_name" {}

variable "provider_region_name" {}

variable "atlas_cidr_block" {
  default = null
}

variable "peering" {
  type = object({
    atlas_cidr_block = string
    azure_directory_id    = optional(string)
    azure_subscription_id = optional(string)
    resource_group_name   = optional(string)
    vnet_name             = optional(string)
  })
  default = null
}

variable "ip_access_list" {
  default = {}
}