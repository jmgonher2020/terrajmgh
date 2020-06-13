module "pod" {
#  source = "./modulos/"
  source = "github.com/jmgonher2020/terrajmgh"
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaazcus7tl3fravsyw2p7w6dg5biixbwnpx3f
g5cqikz3h2w6hwfiqq"
  private_key_path = "/home/ubuntu/.oci/oci_api_key.pem"
  compartment_ocid = "ocid1.compartment.oc1..aaaaaaaauow2wnn5drbtbuaak7s2h54ok7
46k7r4waw3ujfgl4eh2sv73ipa"
  user_ocid = "ocid1.user.oc1..aaaaaaaa5h4fyfbcmu3jcyd2is4734clobpkcrzfebjuw5f2
hknftkav5lea"
  fingerprint = "ff:69:af:e8:8d:c6:83:ba:54:fb:67:2d:09:9b:00:41"
  region = "us-ashburn-1"
}
output "lb_ip" {
#  value = "${pod.kubernetes_service.echo.load_balancer_ingress.0.ip}"
  value = "${module.pod.lb_ip}"
}
