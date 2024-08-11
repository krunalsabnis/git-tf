repositories = {
  "repo1" = {
    description            = "Repository One"
    homepage_url           = "https://example.com/repo1"
    visibility             = "public"
    has_issues             = true
    has_projects           = true
    has_wiki               = true
    is_template            = false
    has_downloads          = true
    has_discussions        = false
    auto_init              = true
    gitignore_template     = "Go"
    license_template       = "mit"
    allow_squash_merge     = true
    allow_merge_commit     = true
    allow_rebase_merge     = true
    web_commit_signoff_required = false
    delete_branch_on_merge = true
    allow_auto_merge       = false
    archived               = false
    topics                 = ["terraform", "github", "example"]
    vulnerability_alerts   = true
    pages = {
      source_branch = "main"
      source_path   = "/docs"
      cname         = ""
    }
  },
  "repo2" = {
    description            = "Repository Two"
    homepage_url           = "https://example.com/repo2"
    visibility             = "private"
    has_issues             = true
    has_projects           = false
    has_wiki               = false
    is_template            = true
    has_downloads          = false
    has_discussions        = true
    auto_init              = false
    gitignore_template     = "Python"
    license_template       = "apache-2.0"
    allow_squash_merge     = false
    allow_merge_commit     = true
    allow_rebase_merge     = false
    web_commit_signoff_required = false
    delete_branch_on_merge = false
    allow_auto_merge       = true
    archived               = false
    topics                 = ["terraform", "devops"]
    vulnerability_alerts   = false
    pages = {
      source_branch = "main"
      source_path   = "/docs"
      cname         = ""
    }
  }
}

