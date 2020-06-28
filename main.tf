provider "kubernetes" {
  config_path = "/var/lib/jenkins/.kube/config"
  config_context_auth_info = "target-cluster"
}
