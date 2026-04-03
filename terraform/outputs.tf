output "alb_dns_name" {
  description = "ALB DNS 이름 (접속 URL)"
  value       = "http://${aws_lb.main.dns_name}"
}

output "ecr_repository_url" {
  description = "ECR 레포지토리 URL"
  value       = aws_ecr_repository.app.repository_url
}

output "ecs_cluster_name" {
  description = "ECS 클러스터 이름"
  value       = aws_ecs_cluster.main.name
}

output "ecs_service_name" {
  description = "ECS 서비스 이름"
  value       = aws_ecs_service.app.name
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}
