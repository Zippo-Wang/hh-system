#!/usr/bin/env bash

f_tf_init(){
  echo -e "\033[0;36;40m[Terraform] - terraform init${cend}"
  terraform init
}

f_tf_plan(){
  echo -e "\033[0;36;40m[Terraform] - terraform plan${cend}"
  terraform plan
}

f_tf_apply(){
  echo -e "\033[0;36;40m[Terraform] - terraform apply${cend}"
  echo yes | terraform apply
}

f_tf_destroy(){
  echo -e "\033[0;36;40m[Terraform] - terraform destroy${cend}"
  echo yes | terraform destroy
}
