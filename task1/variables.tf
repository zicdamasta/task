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

variable "aws_availability_zone" {
  description = "Default AWS Availability zone"
  type        = string
  default     = "eu-west-1a"
}
