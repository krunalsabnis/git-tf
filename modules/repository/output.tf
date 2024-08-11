output "repository_names" {
  description = "The names of all created repositories"
  value       = [for repo in github_repository.repositories : repo.name]
}
