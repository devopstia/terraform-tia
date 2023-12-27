# terraform {
#   required_version = ">= 1.0.0"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0"
#     }
#   }
# }

# provider "aws" {
#   region = "us-east-1"
# }

# variable "instance_types" {
#   type    = list(any)
#   default = [("t2.micro", 2), ("t3.micro", 1)]
# }

# resource "aws_instance" "example" {
#   for_each               = tomap(var.instance_types)
#   ami                    = "ami-0fc5d935ebf8bc3bc"
#   instance_type          = each.key
#   key_name               = "terraform-aws"
#   vpc_security_group_ids = ["sg-0c51540c60857b7ed"]
#   subnet_id              = "subnet-096d45c28d9fb4c14"
#   root_block_device {
#     volume_size = "10"
#   }
#   count = each.value

#   tags = {
#     Name      = "vm-${each.key}"
#     Create_By = "Terraform"
#   }
# }
