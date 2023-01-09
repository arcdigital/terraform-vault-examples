resource "vault_mount" "kvv2" {
  namespace = vault_namespace.example.path
  path      = "secret"
  type      = "kv"
  options = {
    version = "2"
  }
}

resource "vault_kv_secret_backend_v2" "kvv2" {
  namespace = vault_namespace.example.path
  mount     = vault_mount.kvv2.path
  # max_versions = 5
  # delete_version_after = 12600
  # cas_required = true
}

resource "vault_kv_secret_v2" "example" {
  namespace = vault_namespace.example.path
  mount     = vault_mount.kvv2.path
  name      = "secret"
  data_json = jsonencode({ foo = "bar" })
}