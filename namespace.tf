resource "vault_namespace" "example" {
    path = "example"
}

resource "vault_policy" "secrets" {
    namespace = vault_namespace.example.path
    name = "example-secrets-policy"
    policy = file("policies/example-secrets-policy.hcl")
}