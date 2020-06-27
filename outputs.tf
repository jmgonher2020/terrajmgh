output "lb_ip" {
  value = "${kubernetes_service.echo.load_balancer_ingress.0.ip}"
}
resource sendmail_send email {
  from = "jmgh@jmgh.com"
  to = "jmgonzalez@aserta.mx"
  subject = "A Terraform Email"
  body = <<EMAIL
Hello, this is an email from terraform.
EMAIL
}
