resource "intersight_workflow" "create_vm_workflow" {
  name = "Create Windows VM Workflow"
  description = "This workflow creates a new Windows virtual machine"

  organization = "My Organization"

  task {
    name = "Create Virtual Machine"
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