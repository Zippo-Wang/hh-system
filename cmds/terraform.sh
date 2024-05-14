#!/usr/bin/env bash

f_tf_init(){
  echo -e "${level_info}${font_green1}执行terraform init...${cend}"
  terraform init
}

f_tf_plan(){
  echo -e "${level_info}${font_green1}执行terraform plan...${cend}"
  terraform plan
}

f_tf_apply(){
  echo -e "${level_info}${font_green1}执行terraform apply...${cend}"
  echo yes | terraform apply
}

f_tf_destroy(){
  echo -e "${level_info}${font_green1}执行terraform destroy...${cend}"
  echo yes | terraform destroy
}
