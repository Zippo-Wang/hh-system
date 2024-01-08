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
  printf "\033[0;1;33m【一】Usage: hh <command> \033[0m\n"
  printf "1. 初次运行系统，请阅读\033[0;1;32mReadme.md\033[0m配置环境变量，然后进行初始化 \n"
  printf "2. \033[0;32mhh\033[0m，显示hh-system主界面 \n"
  printf "3. \033[0;32mhh <command>\033[0m，执行对应命令 \n"
  printf "4. \033[0;32mTAB\033[0m，自动补全，敬请期待！ \n"
  echo

  printf "\033[0;1;33m【二】Main commands: \033[0m\n"
  printf " \033[0;32m$cd_hw\033[0m \t     进入terraform-huaweicloud-provider目录\n"
  printf " \033[0;32m$cd_fd\033[0m \t     进入terraform-flexibleengine-provider目录\n"
  printf " \033[0;32m$cd_gg\033[0m \t     进入terraform-g42cloud-provider目录\n"
  printf " \033[0;32m$cd_std\033[0m      进入windows下本地日常学习目录\n"
  printf " \033[0;32m$cd_loc\033[0m      进入windows下本地代码存放目录\n"
  echo

  printf " \033[0;32m$b_hw\033[0m        build terraform-huaweicloud project，生成二进制文件\n"
  printf " \033[0;32m$b_fd\033[0m        build terraform-flexibleengine project，生成二进制文件\n"
  printf " \033[0;32m$b_gg\033[0m        build terraform-g42cloud project，生成二进制文件\n"
  echo

  printf " \033[0;32m$common_tf $tf_init\033[0m     执行$common_terraform $tf_init\n"
  printf " \033[0;32m$common_tf $tf_plan\033[0m     执行$common_terraform $tf_plan\n"
  printf " \033[0;32m$common_tf $tf_apply\033[0m    执行$common_terraform $tf_apply\n"
  printf " \033[0;32m$common_tf $tf_destroy\033[0m  执行$common_terraform $tf_destroy\n"
  echo

  printf " \033[0;32m$o_cms\033[0m         圣诞快乐！\n"
  printf " \033[0;32m$o_monkey\033[0m      一只小猴子\n"
  printf " \033[0;32m$o_meinv\033[0m       该命令没有描述信息\n"
  echo

  printf "\033[0;1;33m【三】System commands: \033[0m\n"
  printf " \033[0;32m$sys_help2\033[0m      查看hh-system帮助 \n"
  printf " \033[0;32m$sys_charge2\033[0m    查看hh-system定价以及如何开通\033[0;33m黄金会员\033[0m、\033[0;36m铂金会员\033[0m、\033[0;31m终身会员\033[0m \n"
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
