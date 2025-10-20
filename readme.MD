# AWS EC2 instance
you can create EC2 instance in joindevops using this module

## Inputs

* ami_id (Optional) - AMI ID that need to be used by instance. Default is DevOps practive i.e "ami-09c813fb71547fc4f"
* instance_type (Options) - Instance type to be used by instance. Valid values are t3.micro, t3.small, t3.medium. Default is t3.micro
* sg_ids (Required) -  A list of security group IDs to attach instance
* tags (Required) - A map of tags to be associated with instance

## Outpus
* public_ip - Public IP of the instance created
* private_ip - Private IP of the instance created
* instance_id - ID of the instance created