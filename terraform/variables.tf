variable "aws_region" {
  default = "us-east-1"
}

variable "key_name" {
  description = "SSH key pair name for EC2 access"
  type        = string
}

