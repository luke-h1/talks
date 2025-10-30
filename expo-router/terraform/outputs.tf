output "pages_url" {
  description = "Cloudflare Pages URL"
  value       = "https://${cloudflare_pages_project.expo_router_talk.subdomain}"
}

output "custom_domain_url" {
  description = "Custom domain URL"
  value       = "https://expo-router.lhowsam.com"
}

output "pages_project_name" {
  description = "Cloudflare Pages project name"
  value       = cloudflare_pages_project.expo_router_talk.name
}

