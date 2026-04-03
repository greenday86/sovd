variable "aws_region" {
  description = "AWS 리전"
  type        = string
  default     = "ap-northeast-2"
}

variable "app_name" {
  description = "애플리케이션 이름"
  type        = string
}

variable "environment" {
  description = "배포 환경 (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "VPC CIDR 블록"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "사용할 가용 영역 목록"
  type        = list(string)
  default     = ["ap-northeast-2a", "ap-northeast-2c"]
}

variable "container_port" {
  description = "컨테이너가 수신하는 포트"
  type        = number
  default     = 8080
}

variable "container_image" {
  description = "초기 컨테이너 이미지 URI (ECR 푸시 전 임시 이미지)"
  type        = string
  default     = "nginx:latest"
}

variable "task_cpu" {
  description = "Fargate 태스크 CPU (1 vCPU = 1024)"
  type        = number
  default     = 256
}

variable "task_memory" {
  description = "Fargate 태스크 메모리 (MiB)"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "ECS 서비스의 원하는 태스크 수"
  type        = number
  default     = 2
}

variable "autoscaling_min" {
  description = "Auto Scaling 최소 태스크 수"
  type        = number
  default     = 2
}

variable "autoscaling_max" {
  description = "Auto Scaling 최대 태스크 수"
  type        = number
  default     = 10
}

variable "health_check_path" {
  description = "ALB 헬스체크 경로"
  type        = string
  default     = "/health"
}
