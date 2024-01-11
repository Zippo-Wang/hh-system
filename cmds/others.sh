#!/usr/bin/env bash

f_christmas(){
  echo "
　　　/\~~~~~~~~~~~~~\　　　▓　　^*^　　　☆　　12.25　 .☆
　　./　\~~~▓~　 ~~~~\ ◆　　圣诞 .快乐 $◢◣$　 *    *
　　/ ^^ \ ══════\.◆　　　 *　*　　*　 $◢★◣$　 *    *
　..▎[]　▎田　田 ▎ |┃◆　 .　　 　　*　 $◢■■◣$　 *  *
   &▎　　▎　　　 ▎'|'▎ @　　　 　　　* $◢■■■◣$ *    *   *
＃ ■■■■■■■■■■〓▄▃▂▁圣诞节快乐!︸︸|︸︸
"
}

f_monkey(){
  echo '
      ."`".
  .-./ _=_ \.-.
 {  (,(oYo),) }}
 {{ |   "   |} }
 { { \(---)/  }}
 {{  }--=--{ } }
 { { }._:_.{  }}
 {{  } -:- { } }
 {_{ }`===`{  _}
((((\)     (/))))
  '
}

f_beautiful_girl(){
  echo '
    .---.
   (_,/\ \
  (\`^ ^( )
  ) \ - ) (
  (.--' '--.)
 / (_\_/_) \
| / \   / \ |
 \\ / . \ //
  \/\___/\/
  |  \_/  |
   \  /  /
    \/  /
     ( (
     |\ \
     | \ \
    /_Y/_Y
  '
}

f_help(){
  printf "\033[0;1;33m【一】Usage: hh <command> ${cend}\n"
  printf "1. 初次运行系统，请阅读${font_green}Readme.md${cend}配置环境变量，然后进行初始化 \n"
  printf "${font_green}hh${cend}                显示hh-system主界面 \n"
  printf "${font_green}hh <cmd1> <cmd2>${cend}  执行对应命令，1对<>表示可选 \n"
  printf "${font_green}TAB${cend}               ${font_purple}自动补全${cend}，按tab键即可自动补全本系统支持的所有命令 \n"
  echo

  printf "\033[0;1;33m【二】Main commands: ${cend}\n"
  printf " ${font_green}$cd_hw${cend} \t     进入terraform-huaweicloud-provider目录\n"
  printf " ${font_green}$cd_fd${cend} \t     进入terraform-flexibleengine-provider目录\n"
  printf " ${font_green}$cd_gg${cend} \t     进入terraform-g42cloud-provider目录\n"
  printf " ${font_green}$cd_std${cend}      进入windows下本地日常学习目录\n"
  printf " ${font_green}$cd_loc${cend}      进入windows下本地代码存放目录\n"
  echo

  printf " ${font_green}$b_hw${cend}        build terraform-huaweicloud-provider，生成二进制文件\n"
  printf " ${font_green}$b_fd${cend}        build terraform-flexibleengine-provider，生成二进制文件\n"
  printf " ${font_green}$b_gg${cend}        build terraform-g42cloud-provider，生成二进制文件\n"
  echo

  printf " ${font_green}$common_tf $tf_init${cend}     执行$common_terraform $tf_init\n"
  printf " ${font_green}$common_tf $tf_plan${cend}     执行$common_terraform $tf_plan\n"
  printf " ${font_green}$common_tf $tf_apply${cend}    执行$common_terraform $tf_apply，且${font_red}无需输入yes + Enter${cend}\n"
  printf " ${font_green}$common_tf $tf_destroy${cend}  执行$common_terraform $tf_destroy，且${font_red}无需输入yes + Enter${cend}\n"
  echo

  printf " ${font_green}$o_cms${cend}         圣诞快乐！\n"
  printf " ${font_green}$o_monkey${cend}      一只小猴子\n"
  printf " ${font_green}$o_meinv${cend}       该命令没有描述信息\n"
  echo

  printf "\033[0;1;33m【三】System commands: ${cend}\n"
  printf " ${font_green}$common_init${cend}        系统初始化。初次运行系统，请先进行初始化 \n"
  printf " ${font_green}$sys_help2${cend}      查看hh-system帮助 \n"
  printf " ${font_green}$sys_charge2${cend}    查看hh-system定价以及如何开通${font_yellow}黄金会员${cend}、${font_cyan}铂金会员${cend}、${font_red}终身会员${cend} \n"
}

f_charge(){
  echo "💖公益免费💖"
}

# 命令：play
:<<EOF
f_weekend_play(){
  echo "
 -------------- __@      __@       __@       __@      __~@
 ----------- _\`\<,_    _\`\<,_    _\`\<,_    _\`\<,_   _\`\<,_
 ---------- (*)/ (*)  (*)/ (*)  (*)/ (*)  (*)/ (*)  (*)/ (*)
"
}
EOF
