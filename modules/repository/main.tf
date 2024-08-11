terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

resource "github_repository" "repositories" {
  for_each           = var.repositories
  name               = each.key
  description        = each.value.description
  homepage_url       = each.value.homepage_url
  visibility         = each.value.visibility
  has_issues         = each.value.has_issues
  has_discussions    = each.value.has_discussions
  has_projects       = each.value.has_projects
  has_wiki           = each.value.has_wiki
  is_template        = each.value.is_template
  allow_merge_commit = each.value.allow_merge_commit
  allow_squash_merge = each.value.allow_squash_merge
  allow_rebase_merge = each.value.allow_rebase_merge
  allow_auto_merge   = each.value.allow_auto_merge
  squash_merge_commit_title = "PR_TITLE"
  squash_merge_commit_message = "PR_BODY"
  merge_commit_title = "PR_TITLE"
  merge_commit_message = "PR_BODY"
  delete_branch_on_merge = each.value.delete_branch_on_merge
  web_commit_signoff_required = each.value.web_commit_signoff_required
  has_downloads      = each.value.has_downloads
  auto_init          = each.value.auto_init
  gitignore_template = each.value.gitignore_template
  license_template   = each.value.license_template

  archived           = each.value.archived
  archive_on_destroy = true
  topics             = each.value.topics
  vulnerability_alerts   = each.value.vulnerability_alerts
  allow_update_branch = true

  pages {
    source {
      branch = each.value.pages.source_branch
      path   = each.value.pages.source_path
    }
    cname = each.value.pages.cname
  }

}


