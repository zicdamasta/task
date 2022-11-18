variable "aws_region" {
  description = "Default AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "s3_bucket" {
  description = "S3 bucket"
  type        = string
  default     = "zicdamasta-my-tf-bucket"
}

