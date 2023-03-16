resource "intersight_workflow_action" "create_vm_action" {
  name = "Create Windows VM Action"
  description = "This action runs the Create Windows VM Workflow"

  organization = "My Organization"

  workflow_id = intersight_workflow.create_vm_workflow.id

  parameters = <<EOF
{
  "vm_name": "My New Windows VM"
}
EOF
}