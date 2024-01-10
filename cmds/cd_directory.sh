#!/usr/bin/env bash

. $hh_project_path/utils/color.sh

# 进入华为provider目录
f_cd_hw(){
tf_hw="terraform-provider-huaweicloud/"
hw_provider_path="$hh_code_path/$tf_hw"
if [ -d $hw_provider_path ]
then
  cd $hw_provider_path
  printf '\033[0;1;32m您已进入: \033[0m'
  pwd
else
  printf "\033[0;31m该目录不存在:\033[0m %s \n" $hw_provider_path
  printf "快去\033[0;34mgit clone\033[0m tf-huaweicloud-provider吧~ \n"
fi
}

# 进入法电provider目录
f_cd_fd(){
tf_fd="terraform-provider-flexibleengine/"
fd_provider_path="$hh_code_path/$tf_fd"
if [ -d $fd_provider_path ]
then
  cd $fd_provider_path
  printf '\033[0;1;32m您已进入: \033[0m'
  pwd
else
  printf "\033[0;31m该目录不存在:\033[0m %s \n" $fd_provider_path
  printf "快去\033[0;34mgit clone\033[0m tf-flexibleengine-provider吧~ \n"
fi
}

# 进入G42 provider目录
f_cd_gg(){
tf_gg="terraform-provider-g42cloud/"
gg_provider_path="$hh_code_path/$tf_gg"
if [ -d $gg_provider_path ]
then
  cd $gg_provider_path
  printf '\033[0;1;32m您已进入: \033[0m'
  pwd
else
  printf "\033[0;31m该目录不存在:\033[0m %s \n" $gg_provider_path
  printf "快去\033[0;34mgit clone\033[0m tf-g42cloud-provider吧~ \n"
fi
}

# 进入windows的本地代码目录
f_cd_loc(){

if [ -d $hh_code_path ]
then
  cd $hh_code_path
  printf '\033[0;1;34m您已进入: \033[0m'
  pwd
  echo
  printf "\033[0;1;34m以下为该目录下所有文件夹/文件 \033[0m\n"
  ll
else
  printf "该目录不存在: %s \n" $hh_code_path
fi
}


# 进入windows的本地学习目录
std_directory='/mnt/d/DOCS/study' # Note：可自定义学习目录
pan='/mnt/d'  # Note: 把d盘改成c盘

f_cd_std(){

if [ -d $std_directory ]
then
  cd $std_directory
  printf '\033[0;1;32m您已进入: \033[0m'
  pwd
  echo
  printf "\033[0;1;32m以下为该目录下所有文件夹/文件 \033[0m\n"
  ll
else
  printf "你还没有学习目录。好好学习，加油! \n"
  printf "是否在windows下创建学习目录：\033[0;31m/D/DOCS/study \033[0m \n"
  printf "是: \033[0;31m$main_hh $mk_std\033[0m   否: 什么都不做 \n"
fi
}

# 创建学习目录
f_mk_std(){
if [ ! -d $pan ]
then
  echo "你的windows下没有D盘。您可以修改cmds/cd_directory.sh中pan的变量值，以更改新目录的位置"
  return
elif [ -d $std_directory ]
then
  echo "该目录已存在，好好学习吧！"
  return
else
  mkdir -p $std_directory
  printf "您已成功创建\033[0;1;32m$directory\033[0m, 快去好好学习吧！ \n"
fi
}


