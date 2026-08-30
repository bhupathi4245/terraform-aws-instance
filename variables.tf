variable ami_id {
  type    = string
  default = "ami-0220d79f3f480ecf5"
  description = "AMI ID of EC2 instance: joindevops RHEL9"
}

variable instance_type {
    default = "t3.micro"
    type = string
    description = "Instance size"

    validation {
        condition     = contains(["t2.micro", "t3.micro", "t3a.micro"], var.instance_type)
        error_message = "Invalid instance type. Allowed types are t2.micro, t3.micro, t3a.micro."
    }
}

# mandoatory to provide security group ids
variable "sg_ids" {
    type = list
}

variable "tags" {
    type = map
}