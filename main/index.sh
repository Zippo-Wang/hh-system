#!/bin/bash

set fileformat=unix

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
  printf '| 2、例如输入\033[0;31mhh cd-hw\033[0m, 即可进入build华为provider后的目录 %-27s| \n'
  printf '+---%.0s' {1..21}
  echo '+'

  # 支持命令的提示界面
  echo

  printf "\033[0;34m%-26s %-23s %-18s %-30s\033[0m\n" '[1]进入目录' '[2]执行build' '[3]terraform' '[4]其他'
  printf "\033[0;32m%-9s %-15s  %-9s %-14s  %-8s %-12s  %-8s %-12s\033[0m\n" 命令 说明 命令 说明  命令 说明   命令 说明
  printf "%-7s %-19s  %-7s %-14s  %-5s %-12s  %-6s %-12s\n" cd-hw 进入华为目录    b-hw build华为     tf-int 执行init  cms 圣诞节
  printf "%-7s %-19s  %-7s %-14s  %-6s %-12s  %-6s %-12s\n" cd-fd 进入法电目录    b-fd build法电     tf-pl  执行plan  monkey 小猴子
  printf "%-7s %-17s  %-7s %-12s  %-6s %-12s  %-6s %-12s\n" cd-gg 进入G42目录    b-gg buildG42      tf-pp  执行apply  meinv 生成美女
  #printf "%-7s %-19s  %-7s %-14s  %-7s %-12s  %-7s %-12s\n" cd-std 进入学习目录                                       play 去哪玩
  printf "%-7s %-58s    %-6s %-12s\n" cd-std 进入学习目录                                       play 去哪玩
  printf "%-7s %-19s  %-7s %-14s  %-7s %-12s  %-7s %-12s\n" cd-loc 进入本地code
}