resource "vault_policy" "admin" {
  name   = "example-admin-policy"
  policy = file("policies/example-admin-policy.hcl")
}
