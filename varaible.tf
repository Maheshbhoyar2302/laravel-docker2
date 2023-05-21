variable "aws_region" {
  description = "AWS region."
  default     = "ap-south-1"
  type        = string
}


# variable "aws_vpc_name" {
#   type        = string
#   description = "Add name for your VPC."
#   default     = "demo_ecs_vpc"
# }

# variable "aws_vpc_cidr" {
#   type        = string
#   description = "Add CIDR block for your VPC."
#   default     = "192.168.0.0/16"
# }

# variable "aws_vpc_azs" {
#   type        = list(string)
#   description = "Add list of AZs available in the region that you want to use. Example ['ap-south-1a', 'ap-south-1b', 'ap-south-1c']"
#   default     = ["ap-south-1a", "ap-south-1b"]
# }

# variable "aws_vpc_private_subnets" {
#   type        = list(string)
#   description = "Add list of CIDR locks for private subnets in the vpc. Example ['192.168.1.0/24','192.168.2.0/24','192.168.3.0/24']"
#   default     = ["192.168.1.0/24", "192.168.2.0/24"]
# }

# variable "aws_vpc_public_subnets" {
#   type        = list(string)
#   description = "Add list of CIDR locks for public subnets in the vpc. Example ['192.168.11.0/24','192.168.12.0/24','192.168.13.0/24']"
#   default     = ["192.168.11.0/24", "192.168.12.0/24"]
# }

# variable "enable_nat_gateway" {
#   type        = bool
#   description = "Enable or disable the NAT gateway. Enter a boolean value 'true' or 'false'."
#   default     = true
# }

# variable "environment" {
#   type        = string
#   description = "Add the environment name"
#   default     = "demo"
# }

variable "ecs_iam_role_name" {
  type        = string
  description = "Enter a name for the ECS IAM Role"
  default     = "ecsTaskExecutionRole"
}

variable "aws_ecs_cluster_name" {
  type        = string
  description = "Enter a name for ECS cluster"
  default     = "lara-ecs-cluster"
}

variable "aws_ecr_repository" {
  type        = string
  description = "ECR repo name"
  default     = "my-first-ecr-repo"
}

variable "aws_ecs_task_def" {
  type        = string
  description = "lara_ecs_app"
  default     = "lara_ecs_app"
}

variable "fargate_cpu" {
  type        = number
  description = "enter required number of cpus"
  default     = 256
}

variable "fargate_memory" {
  type        = number
  description = "Enter required memory"
  default     = 512
}

variable "aws_ecs_service_name" {
  type        = string
  description = "service name"
  default     = "lara_ecs_svc"
}

variable "app_port" {
  type        = number
  description = "Port number of the application contianer"
  default     = 80
}

variable "app_count" {
  type        = number
  description = "Number of replicas of the pod"
  default     = 1
}

# variable "ecs_alb_name" {
#   type        = string
#   description = "ALB Name"
#   default     = "demo-ecs-alb"
# }

# variable "health_check_path" {
#   type    = string
#   default = "/"
# }

variable "aws_sg_name" {
  type        = string
  description = "security group name"
  default     = "lara_ecs_sg"
}

variable "tag" {
  type    = string
  default = "lara"
}

variable "ecs_task_execution_role_name" {
  type    = string
  default = "ecsTaskExecutionRole"
}