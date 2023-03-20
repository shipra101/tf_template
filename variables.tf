variable "resource_group" {
  description = "name of resource group used for the service(s) obtained or created"
  type        = string
}

variable "ibm_region" {
  description = "IBM Cloud region where all resources will be deployed"
  type        = string
  default     = "us-south"
}

variable "plan" {
  description = "plan"
  type        = string
  default     = "lite"
}

variable "ibmcloud_api_key" {
  description = "api key used to access IBM Cloud"
  type        = string
}
