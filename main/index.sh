#!/usr/bin/env bash

# 系统开头部分
f_index(){
  printf '+---%.0s' {1..21} # 上下边界，共21*4=84
  echo '+'                  # 上下边界尾部
  printf '|%-83s| \n'       # 空行加左右边界
  printf '| %-28s \033[0;36m 😀欢迎来到hh系统😀 \033[0m %31s |\n'
  printf '|%-83s| \n'
  printf '+---%.0s' {1..21}
  echo '+'

  # 系统说明
  printf '|\033[0;31m系统说明\033[0m\033[0;32;5m🔔🔔🔔\033[0m %-68s|\n'
  printf '| 1、输入命令即可执行相应的动作 %-52s| \n'
  printf '| 2、例如输入\033[0;31mhh cd-hw\033[0m, 即可进入tf-huaweicloud-provider目录 %-25s| \n'
  printf '+---%.0s' {1..21}
  echo '+'

  # 支持命令的提示界面
  echo

  printf "\033[0;34m%-26s %-23s %-20s %-30s\033[0m\n" '[1]进入目录' '[2]执行build' '[3]terraform' '[4]其他命令'
  printf "\033[0;32m%-9s %-15s  %-7s %-16s  %-12s %-10s  %-9s %-12s\033[0m\n" 命令 说明 命令 说明        命令                  说明         命令 说明
  printf "%-7s %-19s  %-5s %-16s  %-2s %-7s %-11s  %-7s %-12s\n" $cd_hw 进入华为目录    $b_hw build华为   $common_tf $tf_init 初始化      $o_cms 圣诞节
  printf "%-7s %-19s  %-5s %-16s  %-2s %-7s %-12s  %-7s %-12s\n" $cd_fd 进入法电目录    $b_fd build法电   $common_tf $tf_plan 执行计划     $o_monkey 小猴子
  printf "%-7s %-17s  %-5s %-14s  %-2s %-7s %-10s  %-7s %-12s\n" $cd_gg 进入G42目录    $b_gg buildG42   $common_tf $tf_apply 执行       $o_meinv 生成美女
  printf "%-7s %-39s  %-2s %-6s %-10s  %-7s %-12s\n"             $cd_loc 进入本地code                    $common_tf $tf_destroy 删除     $sys_help1 系统帮助
  printf "%-7s %-62s  %-7s %-12s\n"                              $cd_std 进入学习目录                                               $sys_charge1 系统定价

  # 下面这行用于扩展
  #printf "%-7s %-19s  %-7s %-14s  %-7s %-12s  %-7s %-12s\n" cd-loc 进入本地code
}

