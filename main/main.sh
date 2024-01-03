#!/bin/bash

# 系统初始化
f_hh_init(){
  for file in `find $hh_project_path -name *.sh -type f`; do vi $file -c 'set ff=unix | wq!'; done
  echo 'hh-system have finished init successfully!'
}

source $hh_project_path/main/index.sh
source $hh_project_path/main/constants.sh

source $hh_project_path/cmds/build_provider.sh
source $hh_project_path/cmds/cd_directory.sh
source $hh_project_path/cmds/others.sh
source $hh_project_path/cmds/terraform.sh

# 入口
operate1=${1}

# 判断第1个参数是否是hh
if [[ ${main_hh} != ${hh_main} ]]
then
  printf "[ERROR]请参考Readme.md配置环境变量：\n"
  printf "\033[0;31mhh_main='hh'\033[0m \n"
  printf "alias \033[0;31mhh\033[0m='xxx' \n"
  return
fi

# 判断hh后面是否有其他参数，没有就显示系统主界面，有就执行对应命令
if [[ -n ${operate1} ]]
then
  printf '\033[0;33m执行结果\033[0;33;5m🔊\033[0m\033[0m:'
  echo
else
  f_index
fi

case $operate1 in
  # [1]进入目录
  $cd_hw)  f_cd_hw;;
  $cd_fd)  f_cd_fd;;
  $cd_gg)  f_cd_gg;;
  $cd_std) f_cd_std;;
  $cd_loc) f_cd_loc;;

  # [2]执行build
  $b_hw) f_build_huaweicloud;;
  $b_fd) f_build_flexibleengine;;
  $b_gg) f_build_g42cloud;;

  # [3]其他
  $o_cms)    f_christmas;;
  $o_monkey) f_monkey;;
  $o_meinv)  f_beautiful_girl;;

  # [4]系统命令
  $sys_help)   f_help;;
  $sys_charge) f_charge;;

  # 公共
  $common_init) f_hh_init;;
  $common_none);;
  *) echo "[ERROR]没有这个命令：hh $@"
esac
