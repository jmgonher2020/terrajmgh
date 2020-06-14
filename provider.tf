provider "oci" {
#  tenancy_ocid     = "${var.tenancy_ocid}"
#  user_ocid        = "${var.user_ocid}"
#  fingerprint      = "${var.fingerprint}"
#  private_key_path = "${var.private_key_path}"
#  private_key_password = "${var.private_key_password}"
#  region           = "${var.region}"
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaazcus7tl3fravsyw2p7w6dg5biixbwnpx3fg5cqikz3h2w6hwfiqq"
  user_ocid        = "ocid1.user.oc1..aaaaaaaa5h4fyfbcmu3jcyd2is4734clobpkcrzfebjuw5f2hknftkav5lea"
  fingerprint      = "ff:69:af:e8:8d:c6:83:ba:54:fb:67:2d:09:9b:00:41"
  private_key_path = "/home/ubuntu/.oci/oci_api_key.pem"
  private_key_password = "infranetsadssa"
  region           = "us-ashburn-1"

}
