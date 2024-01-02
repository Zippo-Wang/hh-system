#!/usr/bin/env bash

f_build_huaweicloud(){
  echo
  echo -e "\033[0;36;40m[HuaweiCloud Provider] - Start formatting the code\033[0m"
  make fmt

  echo -e "\033[0;36;40m[HuaweiCloud Provider] - The code formatting is complete,start building\033[0m"
  make build

  echo -e "\033[0;36;40m[HuaweiCloud Provider] - Complete the build and start copying files to the local warehouse.\033[0m"
  rm -rf ~/.terraform.d/plugins/local-registry/huaweicloud/huaweicloud/0.0.1/linux_amd64/terraform-provider-huaweicloud

  cp ~/go/bin/terraform-provider-huaweicloud ~/.terraform.d/plugins/local-registry/huaweicloud/huaweicloud/0.0.1/linux_amd64

  echo -e "\033[0;36;40m[HuaweiCloud Provider] - All Completed\033[0m"
  stat -c %y ~/.terraform.d/plugins/local-registry/huaweicloud/huaweicloud/0.0.1/linux_amd64/terraform-provider-huaweicloud
}

f_build_flexibleengine(){
  echo
  echo -e "\033[0;36;40m[FlexibleEngineCloud Provider] - Start formatting the code\033[0m"
  make fmt

  echo -e "\033[0;36;40m[FlexibleEngineCloud Provider] - The code formatting is complete,start building\033[0m"
  make build

  echo -e "\033[0;36;40m[FlexibleEngineCloud Provider] - Complete the build and start copying files to the local warehouse.\033[0m"
  rm -rf ~/.terraform.d/plugins/local-registry/flexibleengine/flexibleengine/0.0.1/linux_amd64/terraform-provider-flexibleengine

  cp ~/go/bin/terraform-provider-flexibleengine ~/.terraform.d/plugins/local-registry/flexibleengine/flexibleengine/0.0.1/linux_amd64

  echo -e "\033[0;36;40m[FlexibleEngineCloud Provider] - All Completed\033[0m"
  stat -c %y ~/.terraform.d/plugins/local-registry/flexibleengine/flexibleengine/0.0.1/linux_amd64/terraform-provider-flexibleengine
}

f_build_g42cloud(){
  echo
  echo -e "\033[0;36;40m[G42Cloud Provider] - Start formatting the code\033[0m"
  make fmt

  echo -e "\033[0;36;40m[G42Cloud Provider] - The code formatting is complete,start building\033[0m"
  make build

  echo -e "\033[0;36;40m[G42Cloud Provider] - Complete the build and start copying files to the local warehouse.\033[0m"
  rm -rf ~/.terraform.d/plugins/local-registry/g42cloud/g42cloud/0.0.1/linux_amd64/terraform-provider-g42cloud

  cp ~/go/bin/terraform-provider-g42cloud ~/.terraform.d/plugins/local-registry/g42cloud/g42cloud/0.0.1/linux_amd64

  echo -e "\033[0;36;40m[G42Cloud Provider] - All Completed\033[0m"
  stat -c %y ~/.terraform.d/plugins/local-registry/g42cloud/g42cloud/0.0.1/linux_amd64/terraform-provider-g42cloud
}

