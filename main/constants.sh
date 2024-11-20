#!/usr/bin/env bash

# [1]进入目录
cd_hw='cd-hw'
cd_fd='cd-fd'
cd_gg='cd-gg'
cd_std='cd-std'
cd_loc='cd-loc'

mk_std='mk-std'


# [2]执行build
b_hw='b-hw'
b_fd='b-fd'
b_gg='b-gg'
b_pkr='b-pkr'

# [3]terraform
common_tf='tf'
common_terraform='terraform'
common_var_file='-var-file'
terraform_init='init'
terraform_plan='plan'
terraform_apply='apply'
terraform_destroy='destroy'

tf_init='tfi'
tf_plan='tfp'
tf_apply='tfa'
tf_destroy='tfd'

tf_var_file='-var'


# [4]packer
p_mv='p-mv'


# [5]其他
o_cms='cms'
o_monkey='monkey'
o_meinv='meinv'

# [6] 更新
sys_current_version='v2.1.3'
check_upgrade='upgrade'

low_version=101
eq_version=102
high_version=103

owner='Zippo-Wang'
repo='hh-system'


# [7]系统命令
sys_help1='help'
sys_help2='-help'
sys_help3='--help'
sys_version1='version'
sys_version2='-version'
sys_version3='--version'
sys_version4='-v'
sys_charge1='charge'
sys_charge2='-charge'
sys_charge3='--charge'

# [5]go mod
go_mod="mod"
go_mod_tidy="go mod tidy"
go_mod_vendor="go mod vendor"

# 公共
common_init='init'
common_none=''

# log level
level_info="\033[0;30;42m[info]${cend}"
level_warn="\033[0;30;43m[warn]${cend}"
level_error="\033[0;30;41m[error]${cend}"


# 核心命令
main_hh='hh'

cmd_list1=(\
  $cd_hw $cd_fd $cd_gg $cd_std $cd_loc $mk_std \
  $b_hw $b_fd $b_gg \
  $o_cms $o_monkey $o_meinv \
  $sys_help1 $sys_help2 $sys_help3 $sys_charge1 $sys_charge2 $sys_charge3\
  $sys_version1 $sys_version2 $sys_version3 $sys_version4\
  $common_tf $common_init \
  $go_mod \
  $b_pkr \
  $tf_init $tf_plan $tf_apply $tf_destroy
)

cmd_list2=(\
  $tf_var_file \
)
