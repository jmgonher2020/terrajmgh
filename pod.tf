resource "kubernetes_deployment" "echo" {
  metadata {
    name = "scalable-echo-example"
    labels = {
      App = "ScalableEchoExample"
    }
  }
  spec {
    replicas = 3
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
      args = ["-listen=:80", "-text='Hola Mundo JMGH 2020'"]
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

