output "lb_ip" {
  value = "${kubernetes_service.echo.load_balancer_ingress.0.ip}"
}
output "replicas" {
  value = "${kubernetes_deployment.echo.spec.0.replicas}"
}
output "nodos" {
  value = "${oci_containerengine_node_pool.k8s_node_pool.node_config_details.0.size}"
}
#output "K8s Version" {
#  value = "${oci_containerengine_cluster.k8s_cluster.kubernetes_version}"
#}
