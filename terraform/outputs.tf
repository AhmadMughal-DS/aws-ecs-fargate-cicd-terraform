output "application_url" {
  description = "Public URL of the Fargate service behind the ALB"
  value       = "http://${aws_lb.this.dns_name}"
}

output "ecr_repository_url" {
  description = "ECR repository the CI build pushes to"
  value       = aws_ecr_repository.app.repository_url
}

output "codebuild_project" {
  description = "CodeBuild project name (start a build to push a new image)"
  value       = aws_codebuild_project.app.name
}

output "ecs_cluster" {
  description = "ECS cluster name"
  value       = aws_ecs_cluster.this.name
}
