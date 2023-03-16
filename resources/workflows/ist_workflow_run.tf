terraform {
  required_providers {
    intersight = {
      source = "CiscoDevNet/intersight"
      version = "1.0.35"
    }
  }
}

provider "intersight" {
  apikey = var.api_key
  secretkey = var.secretkey
  endpoint = "https://intersight.com"
}

data "intersight_organization_organization" "default" {
  name  = "default"
}



resource "intersight_workflow_action" "create_vm_action" {
  name = "Create Windows VM Action"
  description = "This action runs the Create Windows VM Workflow"

  organization = intersight_organization_organization.default.id

  workflow_id = intersight_workflow.create_vm_workflow.id

  parameters = <<EOF
{
  "vm_name": "My New Windows VM"
}
EOF
}