output "lb_ip" {
  value = "${kubernetes_service.echo.load_balancer_ingress.0.hostname}"
}
output "replicas" {
  value = "${kubernetes_deployment.echo.0.replicas}"
}
