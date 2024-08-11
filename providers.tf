terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}


terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

variable "github_token" {
  description = "GitHub token for authenticating with the GitHub API"
  type        = string
}
variable "github_owner" {
  description = "GitHub Owner name or Organization name"
  type        = string
}