#!/usr/bin/env bash

f_tf_init(){
  echo -e "${level_info}${font_green1}执行terraform init...${cend}"
  terraform init
}

f_tf_plan(){
  echo -e "${level_info}${font_green1}执行terraform plan...${cend}"

  if [[ ${1} == ${tf_var_file} ]]; then
    if [[ ! -e ${hh_tf_var_file_name} ]]; then
        printf "${level_error}File ${hh_tf_var_file_name} not exists. Please check env variables or use 'hh ${tf_plan}' without '-var'\n"
        return 0
    fi
    terraform plan ${common_var_file}=${hh_tf_var_file_name}
    return 1
  fi
  terraform plan
}

f_tf_apply(){
  echo -e "${level_info}${font_green1}执行terraform apply...${cend}"
  if [[ ${1} == ${tf_var_file} ]]; then
    if [[ ! -e ${hh_tf_var_file_name} ]]; then
        printf "${level_error}File ${hh_tf_var_file_name} not exists. Please check env variables or use 'hh ${tf_apply}' without '-var'\n"
        return 0
    fi
    echo yes | terraform apply ${common_var_file}=${hh_tf_var_file_name}
    return 1
  fi
  echo yes | terraform apply ${1}
}

f_tf_destroy(){
  echo -e "${level_info}${font_green1}执行terraform destroy...${cend}"
  if [[ ${1} == ${tf_var_file} ]]; then
    if [[ ! -e ${hh_tf_var_file_name} ]]; then
        printf "${level_error}File ${hh_tf_var_file_name} not exists. Please check env variables or use 'hh ${tf_destroy}' without '-var'\n"
        return 0
    fi
    echo yes | terraform destroy ${common_var_file}=${hh_tf_var_file_name}
    return 1
  fi
  echo yes | terraform destroy ${1}
}
