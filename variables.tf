
variable "inbound_ec2" {
  type        = list(any)
  default     = [22, 80]
  description = "inbound port allow on production instance"
}

variable "instance_type" {
  type        = string                     # The type of the variable, in this case a string
  default     = "m6i.large"                # Default value for the variable
  description = "The type of EC2 instance" # Description of what this variable represents
}

variable "ami" {
  type    = string
  default = "ami-0818a4d7794d429b1"
}

variable "key_name" {
  type    = string
  default = "asgawskey"
}

variable "availability_zone" {
  type    = list(string)
  default = ["ap-southeast-2a", "ap-southeast-2b"]
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  type        = list(string)
  description = "list of all cidr for subnet"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}