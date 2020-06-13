resource "kubernetes_deployment" "echo" {
  metadata {
    name = "scalable-echo-example"
    labels = {
      App = "ScalableEchoExample"
    }
  }
  spec {
    replicas = 5
    selector {
      match_labels = {
        App = "ScalableEchoExample"
      }
    }
    template {
      metadata {
        labels = {
          App = "ScalableEchoExample"
        }
      }
  spec {
    container {
      image = "hashicorp/http-echo:0.2.1"
      name  = "example2"
      args = ["-listen=:80", "-text='Hola Mundo JMGH'"]
      port {
        container_port = 80
}
}
}
}
}
}
resource "kubernetes_service" "echo" {
  metadata {
    name = "echo-example"
  }
  spec {
    selector = {
      App = kubernetes_deployment.echo.spec.0.template.0.metadata[0].labels.App
    }
    port {
      port        = 80
      target_port = 80
    }
    type = "LoadBalancer"
}
depends_on = [
   local_file.kubeconfig,
  ]
}
output "lb_ip" {
  value = "${kubernetes_service.echo.load_balancer_ingress.0.ip}"
}
