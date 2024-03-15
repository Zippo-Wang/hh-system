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


# [3]terraform
common_tf='tf'
common_terraform='terraform'
tf_init='init'
tf_plan='plan'
tf_apply='apply'
tf_destroy='destroy'


# [4]其他
o_cms='cms'
o_monkey='monkey'
o_meinv='meinv'


# [4]系统命令
sys_current_version='v2.0.2'

sys_help1='-help'
sys_help2='--help'
sys_version1='-version'
sys_version2='--version'
sys_version3='-v'
sys_charge1='-charge'
sys_charge2='--charge'

# [5]go mod
go_mod="mod"
go_mod_tidy="go mod tidy"
go_mod_vendor="go mod vendor"

# 公共
common_init='init'
common_none=''

# 核心命令
main_hh='hh'

cmd_list1=(\
  $cd_hw $cd_fd $cd_gg $cd_std $cd_loc $mk_std \
  $b_hw $b_fd $b_gg \
  $o_cms $o_monkey $o_meinv \
  $sys_help1 $sys_help2 $sys_charge1 $sys_charge2 $sys_version1 $sys_version2 $sys_version3\
  $common_tf $common_init \
  $go_mod
)

cmd_list2=(\
  $tf_init $tf_plan $tf_apply $tf_destroy \
)
