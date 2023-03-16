resource "intersight_profile_template" "my_profile_template" {
  name = "My Profile Template"
  description = "This is my profile template"

  profile_type = "compute"
  target_platform = "ucsm"

  organization = intersight_organization_organization.id

  # Add policies to the profile template
  policies {
    policy_type = "adapter"
    policy_name = "My Adapter Policy"
  }
  policies {
    policy_type = "bios"
    policy_name = "My BIOS Policy"
  }
}