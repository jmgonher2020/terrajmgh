pipeline {
 agent any
 stages {
 stage('shell Terraform') {
 steps {
sh "terraform init"
sh "terraform plan"
sh "terraform get -update"
sh "terraform apply -auto-approve"
sh "terraform output lb_ip"
//sh "terraform destroy -auto-approve"
}
}
}
}
