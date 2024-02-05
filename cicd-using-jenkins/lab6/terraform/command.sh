#Require: re-use keypair from terraform section.

#Reference: Terraform State
https://developer.hashicorp.com/terraform/language/settings/backends/s3

#Commands Terraform:
cd singapore-dev
#Chỉnh sửa file sau: singapore-dev/terraform.tfvars
#Dòng 8: ecr_repo_url ->chỉnh sửa thành url ECR repository của bạn ví dụ:
430950558682.dkr.ecr.ap-southeast-1.amazonaws.com/nodejs-random-color:ver-5

terraform init
terraform plan --var-file "terraform.tfvars"
terraform apply --var-file "terraform.tfvars"
terraform destroy --var-file "terraform.tfvars"