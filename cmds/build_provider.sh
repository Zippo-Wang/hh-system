#!/usr/bin/env bash

f_build_huaweicloud(){
  echo
  echo -e "\033[0;36;40m[HuaweiCloud Provider] - Start formatting the code\033[0m"
  make fmt

  echo -e "\033[0;36;40m[HuaweiCloud Provider] - The code formatting is complete,start building\033[0m"
  make build

  echo -e "\033[0;36;40m[HuaweiCloud Provider] - Complete the build and start copying files to the local warehouse.\033[0m"
  directory='/home/huawei/.terraform.d/plugins/local-registry/huaweicloud/huaweicloud/0.0.1/linux_amd64'

  rm -rf "${directory}/terraform-provider-huaweicloud"

  if [ ! -d $directory ]
  then
    mkdir -p $directory
    chmod -R 777 '/home/huawei/.terraform.d/plugins/local-registry/huaweicloud/'
  fi

  cp ~/go/bin/terraform-provider-huaweicloud $directory

  echo -e "\033[0;36;40m[HuaweiCloud Provider] - All Completed\033[0m"
  stat -c %y ${directory}/terraform-provider-huaweicloud
}

f_build_flexibleengine(){
  echo
  echo -e "\033[0;36;40m[FlexibleEngineCloud Provider] - Start formatting the code\033[0m"
  make fmt

  echo -e "\033[0;36;40m[FlexibleEngineCloud Provider] - The code formatting is complete,start building\033[0m"
  make build

  echo -e "\033[0;36;40m[FlexibleEngineCloud Provider] - Complete the build and start copying files to the local warehouse.\033[0m"
  directory='/home/huawei/.terraform.d/plugins/local-registry/flexibleengine/flexibleengine/0.0.1/linux_amd64'

  rm -rf "${directory}/terraform-provider-flexibleengine"

  if [ ! -d $directory ]
  then
    mkdir -p $directory
    chmod -R 777 '/home/huawei/.terraform.d/plugins/local-registry/flexibleengine/'
  fi

  cp ~/go/bin/terraform-provider-flexibleengine $directory

  echo -e "\033[0;36;40m[FlexibleEngineCloud Provider] - All Completed\033[0m"
  stat -c %y ${directory}/terraform-provider-flexibleengine
}

f_build_g42cloud(){
  echo
  echo -e "\033[0;36;40m[G42Cloud Provider] - Start formatting the code\033[0m"
  make fmt

  echo -e "\033[0;36;40m[G42Cloud Provider] - The code formatting is complete,start building\033[0m"
  make build

  echo -e "\033[0;36;40m[G42Cloud Provider] - Complete the build and start copying files to the local warehouse.\033[0m"
  directory='/home/huawei/.terraform.d/plugins/local-registry/g42cloud/g42cloud/0.0.1/linux_amd64'

  rm -rf "${directory}/terraform-provider-g42cloud"

  if [ ! -d $directory ]
  then
    mkdir -p $directory
    chmod -R 777 '/home/huawei/.terraform.d/plugins/local-registry/g42cloud/'
  fi

  cp ~/go/bin/terraform-provider-g42cloud $directory

  echo -e "\033[0;36;40m[G42Cloud Provider] - All Completed\033[0m"
  stat -c %y ${directory}/terraform-provider-g42cloud
}
