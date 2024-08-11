module "repository" {
  source = "./modules/repository"
  repositories = var.repositories
}

output "created_repository_names" {
  description = "The names of all created repositories"
  value       = module.repository.repository_names
}
