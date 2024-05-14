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
tf_init='init'
tf_plan='plan'
tf_apply='apply'
tf_destroy='destroy'

# [4]packer
p_mv='p-mv'


# [5]其他
o_cms='cms'
o_monkey='monkey'
o_meinv='meinv'


# [6]系统命令
sys_current_version='v2.0.2'

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
level_info="${bkd_green}[info]${cend}"
level_warn="${bkd_yellow}[warn]${cend}"
level_error="${bkd_red}[error]${cend}"


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
  $b_pkr
)

cmd_list2=(\
  $tf_init $tf_plan $tf_apply $tf_destroy \
)
