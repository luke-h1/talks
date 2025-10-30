variable "cf_api_token" {
  description = "Cloudflare API Token with Pages and DNS permissions"
  type        = string
  sensitive   = true
}

variable "cloudflare_account_id" {
  description = "Cloudflare Account ID"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID for lhowsam.com domain"
  type        = string
}

variable "production_branch" {
  description = "Production branch name"
  type        = string
  default     = "@luke-h1/feat/expo-router-talk"
}

