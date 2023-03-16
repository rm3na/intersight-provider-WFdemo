resource "intersight_server_profile_attachment" "example" {
  server_dn = "dn of the server you want to attach the profile to"
  profile_dn = intersight_profile.example.dn
}