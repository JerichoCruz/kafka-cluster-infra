variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "instance_count" {
  type = map(string)

  default = {
    "rest"            = 1
    "connect"         = 1
    "ksql"            = 1
    "schema"          = 1
    "control_center"  = 1
    "broker"          = 1
    "zookeeper"       = 1
  }
}

variable "instance_prefix" {
  default     = "staging"
}

variable "aws_ami" {
  description = "The AWS AMI."
  default     = "ami-0b5eea76982371e91" #https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
}

variable "aws_instance_type" {
  description = "The AWS Instance Type."
  default     = "t2.small" # Important: Confluent recommends a minimum instance type “t2.large” to run Kafka, so if you modify this it will be out of AWS Free Tier and it will cost you money
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default     = "10.0.1.0/24"
}

variable "key_name" {
  description = "Key Pair"
  default     = "terraform-ansible-pair" # chmod 400 ~/.ssh/terraform-ansible-pair.pem
}
