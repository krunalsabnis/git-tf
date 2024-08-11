variable "repositories" {
  description = "A map of repositories to create with full configurations"
  type        = map(object({
    description            = string
    homepage_url           = string
    visibility             = string
    has_issues             = bool
    has_projects           = bool
    has_wiki               = bool
    is_template            = bool
    has_downloads          = bool
    has_discussions        = bool
    auto_init              = bool
    gitignore_template     = string
    license_template       = string
    allow_squash_merge     = bool
    allow_merge_commit     = bool
    allow_rebase_merge     = bool
    delete_branch_on_merge = bool
    allow_auto_merge       = bool
    archived               = bool
    topics                 = list(string)
    vulnerability_alerts   = bool
    web_commit_signoff_required = bool
    pages                  = object({
      source_branch = string
      source_path   = string
      cname         = string
    })
  }))
}



