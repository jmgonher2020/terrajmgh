provider "kubernetes" {
  config_path = "${path.root}/generated/kubeconfig"
  config_context_auth_info = "target-cluster"
}
