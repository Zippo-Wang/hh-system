#!/usr/bin/env bash

source $hh_project_path/utils/color.sh

# 进入华为provider目录
f_cd_hw(){
tf_hw="terraform-provider-huaweicloud/"
hw_provider_path="$hh_code_path/$tf_hw"
if [ -d $hw_provider_path ]
then
  cd $hw_provider_path
  printf "${level_info}${font_green1}您已进入: ${cend}"
  pwd
else
  printf "${level_error}${font_red1}该目录不存在:${cend} %s \n" $hw_provider_path
  printf "${level_info}快去${font_blue1}git clone${cend} tf-huaweicloud-provider吧~ \n"
fi
}

# 进入法电provider目录
f_cd_fd(){
tf_fd="terraform-provider-flexibleengine/"
fd_provider_path="$hh_code_path/$tf_fd"
if [ -d $fd_provider_path ]
then
  cd $fd_provider_path
  printf "${level_info}${font_green}您已进入: ${cend}"
  pwd
else
  printf "${level_error}${font_red1}该目录不存在:${cend} %s \n" $fd_provider_path
  printf "${level_info}快去${font_blue1}git clone${cend} tf-flexibleengine-provider吧~ \n"
fi
}

# 进入G42 provider目录
f_cd_gg(){
tf_gg="terraform-provider-g42cloud/"
gg_provider_path="$hh_code_path/$tf_gg"
if [ -d $gg_provider_path ]
then
  cd $gg_provider_path
  printf "${level_info}${font_green}您已进入: ${cend}"
  pwd
else
  printf "${level_error}${font_red}该目录不存在:${cend} %s \n" $gg_provider_path
  printf "${level_info}快去${font_blue}git clone${cend} tf-g42cloud-provider吧~ \n"
fi
}

# 进入windows的本地代码目录
f_cd_loc(){

if [ -d $hh_code_path ]
then
  cd $hh_code_path
  printf "${level_info}${font_green1}您已进入: ${cend}"
  pwd
  printf "${level_info}${font_green1}以下为该目录下所有文件夹/文件 ${cend}\n"
  ll
else
  printf "${level_error}该目录不存在: %s \n" $hh_code_path
fi
}


# 进入windows的本地学习目录

f_cd_std(){

if [ -d $hh_study_path ]
then
  cd $hh_study_path
  printf "${level_info}${font_green1}您已进入: ${cend}"
  pwd
  printf "${level_info}${font_green1}以下为该目录下所有文件夹/文件 ${cend}\n"
  ll
else
  printf "${level_warn}你还没有学习目录。好好学习, 加油! \n"
  printf "${level_info}是否在windows下创建学习目录：${font_red1}/D/DOCS/study ${cend}\n"
  printf "${level_info}是: ${font_red1}$main_hh $mk_std${cend}   否: 什么都不做 \n"
fi
}

# 创建学习目录
f_mk_std(){
if [ -d $hh_study_path ]
then
  echo "${level_warn}该目录已存在, 好好学习吧！"
  return
else
  check_success=$(mkdir -p $hh_study_path)
  if [[ -n $check_success ]]  # 需要检查盘符
  then
    printf "${level_info}您已成功创建${font_green}$hh_study_path${cend}, 快去好好学习吧！ \n"
  else
    printf "${level_error}创建失败：$check_success \n"
  fi
fi
}


