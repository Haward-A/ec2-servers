variable "aws_region" {
  description = "The designated region"
  type        = string
  default     = "us-east-1"
}

variable "security_group" {
  description = "object to structure the security group"
  type = list(string)
  default = [ "launch-SSH-ACCESS" ]
}

variable "instance_type" {
  description = "Instance type to launch"
  type        = string
  default     = "t2.micro"
}

variable "keypair" {
  description = "Keypair to launch the ec2 with"
  type        = string
  default     = "AUE1-WEB-LINUX"
}