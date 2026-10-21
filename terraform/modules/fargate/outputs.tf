output "application_url" {
  value = "http://${aws_lb.this.dns_name}"
}
output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}
output "codebuild_project" {
  value = aws_codebuild_project.app.name
}
output "ecs_cluster" {
  value = aws_ecs_cluster.this.name
}
