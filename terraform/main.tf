terraform {
  cloud {
    organization = "danielmschmidt"

    workspaces {
      name = "homebrew-tap"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

variable "github_token" {
  description = "GitHub token for the provider to manage repo secrets (needs admin:org or repo scope)"
  type        = string
  sensitive   = true
}

variable "homebrew_tap_token" {
  description = "Fine-grained PAT with write access to the homebrew-tap repo, distributed as a secret to source repos"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub owner for the repos"
  type        = string
  default     = "danielmschmidt"
}

locals {
  repos = ["go-again", "pomobar"]
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

resource "github_actions_secret" "homebrew_tap_token" {
  for_each = toset(local.repos)

  repository      = each.value
  secret_name     = "HOMEBREW_TAP_TOKEN"
  plaintext_value = var.homebrew_tap_token
}
