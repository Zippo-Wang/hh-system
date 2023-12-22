#!/bin/bash

set fileformat=dos

f_tf_init(){
  echo -e "\033[0;36;40m[Terraform] - terraform init\033[0m"
  terraform init
}

f_tf_plan(){
  echo -e "\033[0;36;40m[Terraform] - terraform plan\033[0m"
  terraform plan
}

f_tf_apply(){
  echo -e "\033[0;36;40m[Terraform] - terraform apply\033[0m"
  terraform apply
}
