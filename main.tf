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

variable "resource_group_id" {
 # default     = "15a5b53ee3ec4657a311fd8c0392f875"  
#  default     = "56de8e51593d4c65802e038ce18d9e03" stage
   default = "6cb9be27fe74437bae3afeef1356e796"
  description = "ID of the resource group."
  type        = string
}

variable "plan" {
  description = "plan"
  type        = string
  default     = "lite"
# default     = "standard" 
}




# resource "ibm_resource_instance" "cos_instance" {
#   name              = "demo-cos"
#   service           = "cloud-object-storage"
#   plan = var.plan
#   location          = "global"
#   resource_group_id = var.resource_group_id
#   tags = ["t1", "t2"]

# }

resource "ibm_cloudant" "cloudant" {
  name     = "agent_cloudant"
  location = "eu-gb"
  plan = var.plan
  resource_group_id = var.resource_group_id
}


