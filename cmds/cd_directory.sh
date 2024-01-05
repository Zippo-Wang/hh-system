#!/usr/bin/env bash

# 进入build完华为provider后的目录
f_cd_hw(){
directory='/home/huawei/.terraform.d/plugins/local-registry/huaweicloud/huaweicloud/0.0.1/linux_amd64'

if [ -d $directory ]
then
  cd $directory
  printf '您已进入：'
  pwd
else
  printf "该目录不存在: %s \n" $directory
  printf "快使用\033[0;31m$main_hh $b_hw\033[0m build 华为 provider吧~ \n"
fi
}

# 进入build完法电provider后的目录
f_cd_fd(){
directory='/home/huawei/.terraform.d/plugins/local-registry/flexibleengine/flexibleengine/0.0.1/linux_amd64'

if [ -d $directory ]
then
  cd $directory
  printf '您已进入：'
  pwd
else
  printf "该目录不存在: %s \n" $directory
  printf "快使用\033[0;31m$main_hh $b_fd\033[0m build 法电 provider吧~ \n"
fi
}

# 进入build完G42provider后的目录
f_cd_gg(){
directory='/home/huawei/.terraform.d/plugins/local-registry/g42cloud/g42cloud/0.0.1/linux_amd64'

if [ -d $directory ]
then
  cd $directory
  printf '您已进入：'
  pwd
else
  printf "该目录不存在: %s \n" $directory
    printf "快使用\033[0;31m$main_hh $b_gg\033[0m build G42 provider吧~ \n"
fi
}

# 进入windows的本地学习目录
f_cd_std(){
directory='/mnt/d/DOCS/study2'

if [ -d $directory ]
then
  cd $directory
  printf '您已进入：'
  pwd
else
  printf "你还没有学习目录。好好学习，加油! \n"
  printf "是否在windows下创建学习目录：\033[0;31m/D/DOCS/study \033[0m \n"
  printf "是: \033[0;31m$main_hh $mk_std\033[0m   否: 什么都不做 \n"
fi
}

# 创建学习目录
f_mk_std(){
directory='/mnt/d/DOCS/study'

if [ -d $directory ]
then
  echo "该目录已存在，好好学习吧！"
  return
else
  mkdir -p $directory
  printf "您已成功创建\033[0;31m$directory\033[0m, 快去好好学习吧！ \n"
fi
}


# 进入windows的本地代码目录
f_cd_loc(){
directory='/mnt/d/code'

if [ -d $directory ]
then
  cd $directory
  printf '您已进入：'
  pwd
else
  printf "该目录不存在: %s \n" $directory
fi
}
