variable "environment" {
  type        = string
  description = "Environment name (dev/prod)"
}

variable "region" {
  type        = string
  default     = "ap-southeast-2"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "inbound_ports" {
  type    = list(number)
  default = [22, 80]
}

variable "ami_id" {
  type        = string
  description = "AMI ID for instances"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  type = string
}

variable "asg_min_size" {
  type    = number
  default = 2
}

variable "asg_max_size" {
  type    = number
  default = 4
}

variable "asg_desired_capacity" {
  type    = number
  default = 2
}