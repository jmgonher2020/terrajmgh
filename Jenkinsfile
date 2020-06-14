pipeline {
 agent any
 stages {
 stage('Set Terraform path') {
 steps {
 sh "terraform init"
 sh "terraform plan"
 sh "terraform get -update"
 sh "terraform destroy -auto-approve"
}
}
}
}
