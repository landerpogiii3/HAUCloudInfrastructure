variable "aws_region" {
  description = "The region to deploy th AWS infrastructure"
  type = string
  default = "ap-southeast-1"
}

variable "vpc_cidr_block" {
  description = "The cidr block for the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "subnet1_cidr_block" {
  description = "The cidr block for subnet1"
  type = string
  default = "10.0.1.0/24"
}

variable "anywhere_cidr_block" {
  description = "Used for entering quad zero cidr block"
  type = string
  default = "0.0.0.0/0"
}

variable "hauPublicIPAdress" {
  description = "Used for entering the HAU public IP address"
  type = string
  default = "0.0.0.0/0"
}

variable "instance_tenancy" {
  description = "Ensures that EC2 instances launched in the VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched"
  type = string
  default = "default"
}

variable "enable_dns_support" {
  description = "Whether to enable DNS support on the VPC"
  type = bool
  default = true
}

variable "enable_dns_hostnames" {
  description = "Whether to enable/disable DNS hostnames in the VPC."
  type = bool
  default = true
}

variable "instance_type" {
  description = "The EC2 instance type to be used."
  type = string
  default = "t3.large"
}

variable "key_name" {
  description = "The name of the Key Pair to be used by instances"
  type = string
  default = "hauSingaporeKeyPair"
}