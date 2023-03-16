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



resource "intersight_workflow" "create_vm_workflow" {
  name = "Create Windows VM Workflow"
  description = "This workflow creates a new Windows virtual machine"

  organization = intersight_organization_organization.default.id

  task {
    name = var.workflow_name
    operation = "com.cisco.ucs.mgmt.create-vm"
    parameters = <<EOF
{
  "vm_name": "Windows VM",
  "vm_os": "windows",
  "vm_cpu_count": 4,
  "vm_memory_size_gb": 8,
  "vm_storage_size_gb": 100
}
EOF
  }
}