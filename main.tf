provider "kubernetes" {
#  config_path = "/var/lib/jenkins/.kube/config"
  config_path = "${data.container_cluster_config.test_cluster_config.config_file_path}"
  config_context_auth_info = "target-cluster"
}
