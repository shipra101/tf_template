terraform {
    required_providers {
        ibm = {
        source = "IBM-Cloud/ibm"
        version = "~> 1.33.0"
        }
    }
 }

provider "ibm" {
}

variable "sleepy_time" {
  description = "time"
  type        = string
}

resource "null_resource" "sleep" {
  triggers = {
    uuid = uuid()
  }

  provisioner "local-exec" {
    command = "sleep ${var.sleepy_time}"
  }
}

# variable "resource_group_id" {
#   description = "ID of the resource group."
#   type        = string
# }


# resource "ibm_resource_instance" "cos_instance" {
#   name              = "demo-cos"
#   service           = "cloud-object-storage"
#   plan              = "standard"
#   location          = "global"
#   resource_group_id = var.resource_group_id
#   tags = ["t1", "t2"]

# }


# module "resource_group" {
  
#   source = "terraform-ibm-modules/resource-management/ibm//modules/resource-group"

#   provision = var.provision
#   name      = var.name
# }

# resource "ibm_resource_group" "resourceGroup" {
#   name     = "prod"
# }
