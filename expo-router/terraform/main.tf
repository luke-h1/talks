terraform {
  backend "s3" {
    bucket  = "terraform-state-expo-router-talk"
    encrypt = true
    key     = "terraform.tfstate"
    region  = "eu-west-2"
  }
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

resource "cloudflare_pages_project" "expo_router_talk" {
  account_id        = var.cloudflare_account_id
  name              = "expo-router-talk"
  production_branch = var.production_branch

  deployment_configs {
    preview {
      environment_variables = {
        NODE_VERSION = "20"
      }
    }
    production {
      environment_variables = {
        NODE_VERSION = "20"
      }
    }
  }
}

# DNS Record for Custom Domain
resource "cloudflare_record" "expo_router_cname" {
  zone_id = var.cloudflare_zone_id
  name    = "expo-router"
  content = cloudflare_pages_project.expo_router_talk.subdomain
  type    = "CNAME"
  proxied = true
  comment = "CNAME record for expo-router.lhowsam.com"
}

resource "cloudflare_pages_domain" "expo_router_domain" {
  account_id   = var.cloudflare_account_id
  project_name = cloudflare_pages_project.expo_router_talk.name
  domain       = "expo-router.lhowsam.com"
}

resource "null_resource" "wrangler_deploy" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = <<-EOT
      cd ${path.module}/..
      bun run build && npx wrangler pages deploy dist \
        --project-name=${cloudflare_pages_project.expo_router_talk.name} \
        --branch=${var.production_branch}
    EOT

    environment = {
      CLOUDFLARE_API_TOKEN  = var.cf_api_token
      CLOUDFLARE_ACCOUNT_ID = var.cloudflare_account_id
    }
  }

  depends_on = [cloudflare_pages_project.expo_router_talk]
}

