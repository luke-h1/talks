terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cf_api_token
}

variable "cf_api_token" {
  description = "Cloudflare API token"
  type        = string
}

variable "cloudflare_account_id" {
  description = "Cloudflare Account ID"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID for lhowsam.com"
  type        = string
}

variable "base_domain" {
  description = "Base domain for talks"
  type        = string
  default     = "talks.lhowsam.com"
}

variable "github_username" {
  description = "GitHub username for repository"
  type        = string
  default     = "luke-h1"
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
  default     = "talks"
}

variable "production_branch" {
  description = "Production branch name"
  type        = string
  default     = "@luke-h1/feat/expo-router-talk"
}

resource "cloudflare_pages_project" "expo_router" {
  account_id        = var.cloudflare_account_id
  name              = "talks-expo-router"
  production_branch = var.production_branch

  build_config {
    build_command   = "cd expo-router && bun install && bun run build"
    destination_dir = "expo-router/dist"
    root_dir        = "/"
  }

  source {
    type = "github"
    config {
      owner             = var.github_username
      repo_name         = var.github_repo
      production_branch = var.production_branch
    }
  }

  deployment_configs {
    production {
      environment_variables = {
        NODE_VERSION = "22"
      }
    }
  }
}

resource "cloudflare_pages_project" "feature_flags" {
  account_id        = var.cloudflare_account_id
  name              = "talks-feature-flags"
  production_branch = var.production_branch

  build_config {
    build_command   = "cd feature-flags && pnpm install && pnpm run build"
    destination_dir = "feature-flags/dist"
    root_dir        = "/"
  }

  source {
    type = "github"
    config {
      owner             = var.github_username
      repo_name         = var.github_repo
      production_branch = var.production_branch
    }
  }

  deployment_configs {
    production {
      environment_variables = {
        NODE_VERSION = "22"
      }
    }
  }
}

resource "cloudflare_workers_script" "talks_proxy" {
  account_id = var.cloudflare_account_id
  name       = "talks-proxy"
  content    = <<-EOT
    export default {
      async fetch(request, env) {
        const url = new URL(request.url);
        const path = url.pathname;

        // Define routing rules
        const routes = {
          '/expo-router': 'https://${cloudflare_pages_project.expo_router.subdomain}',
          '/feature-flags': 'https://${cloudflare_pages_project.feature_flags.subdomain}'
        };

        // Check if path matches any route
        for (const [prefix, targetUrl] of Object.entries(routes)) {
          if (path.startsWith(prefix)) {
            // Remove the prefix and proxy to the target
            const newPath = path.slice(prefix.length) || '/';
            const targetURL = new URL(newPath, targetUrl);
            targetURL.search = url.search;

            // Clone the request and update the URL
            const modifiedRequest = new Request(targetURL.toString(), {
              method: request.method,
              headers: request.headers,
              body: request.body,
              redirect: request.redirect
            });

            return fetch(modifiedRequest);
          }
        }

        // Default landing page
        return new Response(`
          <!DOCTYPE html>
          <html>
            <head>
              <title>Talks by Luke Howsam</title>
              <style>
                body {
                  font-family: system-ui, -apple-system, sans-serif;
                  max-width: 800px;
                  margin: 50px auto;
                  padding: 20px;
                  line-height: 1.6;
                  background: #f5f5f5;
                }
                .container {
                  background: white;
                  padding: 40px;
                  border-radius: 8px;
                  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                }
                h1 { 
                  color: #333;
                  margin-bottom: 30px;
                }
                ul { 
                  list-style: none;
                  padding: 0;
                }
                li { 
                  margin: 15px 0;
                  padding: 15px;
                  background: #f9f9f9;
                  border-radius: 4px;
                  transition: background 0.2s;
                }
                li:hover {
                  background: #f0f0f0;
                }
                a {
                  color: #0066cc;
                  text-decoration: none;
                  font-size: 18px;
                  font-weight: 500;
                }
                a:hover { 
                  text-decoration: underline;
                }
              </style>
            </head>
            <body>
              <div class="container">
                <h1>Talks by Luke Howsam</h1>
                <ul>
                  <li><a href="/expo-router">→ Expo Router</a></li>
                  <li><a href="/feature-flags">→ Feature Flags</a></li>
                </ul>
              </div>
            </body>
          </html>
        `, {
          headers: {
            'content-type': 'text/html;charset=UTF-8',
          },
        });
      },
    };
  EOT

  module = true
}

resource "cloudflare_workers_route" "talks_base" {
  zone_id     = var.cloudflare_zone_id
  pattern     = "${var.base_domain}/*"
  script_name = cloudflare_workers_script.talks_proxy.name
}

resource "cloudflare_record" "talks_base" {
  zone_id = var.cloudflare_zone_id
  name    = "talks"
  content = "192.0.2.1"
  type    = "A"
  proxied = true
  comment = "Managed by Terraform - Talks proxy"
}

# Outputs
output "pages_projects" {
  value = {
    expo_router = {
      name      = cloudflare_pages_project.expo_router.name
      subdomain = cloudflare_pages_project.expo_router.subdomain
      domains   = cloudflare_pages_project.expo_router.domains
    }
    feature_flags = {
      name      = cloudflare_pages_project.feature_flags.name
      subdomain = cloudflare_pages_project.feature_flags.subdomain
      domains   = cloudflare_pages_project.feature_flags.domains
    }
  }
  description = "Cloudflare Pages project details"
}

output "base_domain" {
  value       = var.base_domain
  description = "Base domain for talks"
}

output "worker_script" {
  value       = cloudflare_workers_script.talks_proxy.name
  description = "Cloudflare Worker script for proxying/routing"
}
