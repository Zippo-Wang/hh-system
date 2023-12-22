#!/bin/bash

source $hh_project_path/main/index.sh
source $hh_project_path/cmds/hh_build_provider.sh
source $hh_project_path/cmds/hh_cd_directory.sh
source $hh_project_path/cmds/hh_others.sh
source $hh_project_path/cmds/hh_terraform.sh

# 入口
f_index

# 系统初始化
f_hh_init(){
  for file in `find $hh_project_path -name *.sh -type f`; do vi $file -c 'set ff=unix | wq!'; done
}

operate=${1}
if [[ -n ${operate} ]]
then
  printf '+---%.0s' {1..21}
  printf '\n\033[0;33m执行结果\033[0;33;5m🔊\033[0m\033[0m:'
fi

case $operate in
  # [1]进入目录
  'cd-hw')  f_cd_hw;;
  'cd-fd')  f_cd_fd;;
  'cd-gg')  f_cd_gg;;
  'cd-std') f_cd_std;;
  'cd-loc') f_cd_loc;;

  # [2]执行build
  'b-hw') f_build_huaweicloud;;
  'b-fd') f_build_flexibleengine;;
  'b-gg') f_build_g42cloud;;

  # [3]terraform
  'tf-int') f_tf_init;;
  'tf-pl')  f_tf_plan;;
  'tf-pp')  f_tf_apply;;

  # [4]其他
  'cms')    f_christmas;;
  'monkey') f_monkey;;
  'meinv')  f_beautiful_girl;;
  'play')   f_weekend_play;;

  # 公共
  'init') f_hh_init;;
  '');;
  *) echo "没有这个命令：hh $operate"
esac
