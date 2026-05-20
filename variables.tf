variable "aws_region" {
  type = string
  description = "The AWS region to deploy resources in" 
}

variable "vpc_cidr_range" {
    type = string
    description = "The CIDR block for the VPC"
    default = "172.31.0.0/16"
}

variable "public_subnet_cidrs" {
    type = list(string)
    default = ["172.31.16.0/20", "172.31.17.0/20"]
}

variable "private_subnet_cidrs" {
    type = list(string)  
    default = ["172.31.18.0/20", "172.31.19.0/20"]
}

variable "availability_zones" {
    type = list(string)
    default = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}

variable "ami" {
    type = string
    description = "The AMI ID for the EC2 instance"
    default = "ami-00a929b66ed6e0de6"
}

variable "instance_type" {
    type = string
    description = "The instance type for the EC2 instance"
    default = "t3.micro"
}

# variable "subnet_id" {
#     type = string
#     description = "The subnet ID where the EC2 instance will be launched"
#     default = "value"
# }

variable "security_group" {
    type = list(string)
    description = "The security groups for the EC2 instance"
    default = []
}

# variable "vpc_id" {
#     type = string
#     description = "The VPC ID where the subnets will be created"
# }

variable "bucket_name" {
    type        = string   
    description = "The name of the S3 bucket" 
    default = "nickos-bucket"    
}

# variable "versioning_enabled" {
#     description = "Whether versioning is enabled for the S3 bucket"
#     type        = bool
# }

# variable "tags" {
#     description = "Tags for the S3 bucket"
#     type        = map(string)
# }
