pipeline {
 agent any
 stages {
 stage('Set Terraform path') {
 steps {
 sh "terraform init"
//sh "terraform plan"
sh "terraform get -update"
//sh "terraform apply -auto-approve"
sh "terraform destroy -auto-approve"
}
}
}
}
