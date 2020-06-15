resource "local_file" "kubeconfig" {
  content  = "${data.oci_containerengine_cluster_kube_config.cluster_kube_config.content}"
#  filename = "${path.module}/kubeconfig"
#    filename = "/home/ubuntu/.kube/config"
  filename = "/var/lib/jenkins/.kube/config"
#  filename = "~/.kube/config"
}
resource "kubernetes_deployment" "echo" {
  metadata {
    name = "scalable-echo-example"
    labels = {
      App = "ScalableEchoExample"
    }
  }
  spec {
    replicas = 2
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

