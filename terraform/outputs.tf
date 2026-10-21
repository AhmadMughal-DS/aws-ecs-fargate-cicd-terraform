output "application_url" {
  value = module.fargate.application_url
}
output "ecr_repository_url" {
  value = module.fargate.ecr_repository_url
}
output "codebuild_project" {
  value = module.fargate.codebuild_project
}
output "ecs_cluster" {
  value = module.fargate.ecs_cluster
}
