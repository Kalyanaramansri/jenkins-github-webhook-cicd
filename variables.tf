variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"

}

variable "public_subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))
}

variable "ssh_cidr" {
  type    = string
  default = "0.0.0.0/0"
}

variable "ami_id" {
  type = string
}


variable "instance_type" {
  type    = string
  default = "t3.micro"

}
