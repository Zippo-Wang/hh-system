#!/bin/bash

source $hh_project_path/main/index.sh
source $hh_project_path/main/constants.sh

source $hh_project_path/cmds/build_provider.sh
source $hh_project_path/cmds/cd_directory.sh
source $hh_project_path/cmds/others.sh
source $hh_project_path/cmds/terraform.sh

source $hh_project_path/utils/auto_tab.sh
source $hh_project_path/utils/color.sh

# 系统初始化
f_hh_init(){
  for file in `find $hh_project_path -name *.sh -type f`; do vi $file -c 'set ff=unix | wq!'; done

  # 判断系统是否支持bash_completion
  script_directory="/etc/bash_completion.d/"      # 存放脚本的目录
  env_directory="/usr/share/bash-completion/bash_completion"  # 使脚本生效的目录
  if [ ! -d $script_directory ]
  then
    echo "该目录不存在，您的Linux系统不支持hh-system。${script_directory}"
    return
  fi

  # 如果支持，就写入自动补全脚本
  if sudo -v &>/dev/null;
  then
    sudo cp $hh_project_path/utils/auto_tab.sh /etc/bash_completion.d/hh_auto_tab
    . $env_directory  # 刷新自动补全的环境配置，使立即生效
    printf "${font_green}hh-system初始化成功，请重新打开终端窗口使配置生效！${cend}\n"
  else
    printf "${font_red}sodu密码不正确，hh-system初始化失败！${cend}\n"
  fi
}

# 入口
operate1=${1}
operate2=${2}

# 系统逻辑
# 判断第1个参数是否是hh
if [[ ${main_hh} != ${hh_main} ]]
then
  printf "[ERROR]请参考Readme.md配置环境变量：\n"
  printf "${font_red}hh_main='hh'${cend} \n"
  printf "alias ${font_red}hh${cend}='xxx' \n"
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

# tf相关命令特殊处理
f_terrraform(){
  case $operate2 in
    $tf_init)    f_tf_init;;
    $tf_plan)    f_tf_plan;;
    $tf_apply)   f_tf_apply;;
    $tf_destroy) f_tf_destroy;;
  esac
}

case $operate1 in
  # [1]进入目录
  $cd_hw)  f_cd_hw;;
  $cd_fd)  f_cd_fd;;
  $cd_gg)  f_cd_gg;;
  $cd_std) f_cd_std;;
  $cd_loc) f_cd_loc;;

  $mk_std) f_mk_std;;

  # [2]执行build
  $b_hw) f_build_huaweicloud;;
  $b_fd) f_build_flexibleengine;;
  $b_gg) f_build_g42cloud;;

  # [3]terraform
  $common_tf)  f_terrraform;;

  # [4]其他
  $o_cms)    f_christmas;;
  $o_monkey) f_monkey;;
  $o_meinv)  f_beautiful_girl;;

  # [4]系统命令
  $sys_help1)   f_help;;
  $sys_help2)   f_help;;
  $sys_charge1) f_charge;;
  $sys_charge2) f_charge;;

  # 公共
  $common_init) f_hh_init;;
  $common_none);;
  *) echo -e "${font_red}没有这个命令：${cend}hh $@"
esac




