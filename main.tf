data "ibm_resource_group" "cloudant_group" {
  name = var.resource_group
}

resource "ibm_cloudant" "cloudant" {
  name     = "democloudant"
  location = var.ibm_region
  plan = var.plan
  resource_group_id = data.ibm_resource_group.cloudant_group.id
}
