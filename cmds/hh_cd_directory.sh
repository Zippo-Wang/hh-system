#!/bin/bash

set fileformat=dos

# 进入build完华为provider后的目录
f_cd_hw(){
directory='/home/huawei/.terraform.d/plugins/local-registry/huaweicloud/huaweicloud/0.0.1/linux_amd64'

if [ -d $directory ]
then
  cd $directory
  echo '进来了'
else
  printf "没找着目录: %s \n" $directory
fi
}

# 进入build完法电provider后的目录
f_cd_fd(){
directory='/home/huawei/.terraform.d/plugins/local-registry/flexibleengine/flexibleengine/0.0.1/linux_amd64'

if [ -d $directory ]
then
  cd $directory
  echo '进来了'
else
  printf "没找着目录: %s \n" $directory
fi
}

# 进入build完G42provider后的目录
f_cd_gg(){
directory='/home/huawei/.terraform.d/plugins/local-registry/g42cloud/g42cloud/0.0.1/linux_amd64'

if [ -d $directory ]
then
  cd $directory
  echo '进来了'
else
  printf "没找着目录: %s \n" $directory
fi
}

# 进入windows的本地学习目录
f_cd_std(){
directory='/mnt/d/DOCS/study'

if [ -d $directory ]
then
  cd $directory
  echo '进来了'
else
  printf "你还没有学习目录。好好学习，加油!"
fi
}

# 进入windows的本地代码目录
f_cd_loc(){
directory='/mnt/d/code'

if [ -d $directory ]
then
  cd $directory
  echo '进来了'
else
  printf "没找着目录: %s \n" $directory
fi
}



