variable "my_env" {
  description = "The environment for the app (dev, stg, prd)"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "ami" {
  description = "AMI ID for the EC2 instances"
}

variable "region" {
  description = "region for application"
}

variable "vpc" {
  description = "VPC CIDR"
}

variable "subnet" {
  description = "Subnet CIDR"
}

variable "S3_Bucket" {
  description = "bucket name"
}

