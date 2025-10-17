variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-1"
}

variable "application" {
  description = "Application tag filter"
  type        = string
  default     = "backend"
}

variable "environment" {
  description = "Environment tag filter"
  type        = string
  default     = "development"
}