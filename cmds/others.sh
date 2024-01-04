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
  printf "【一】Usage: hh <command> \n"
  printf "1. 初次运行系统，请阅读\033[0;31mReadme.md\033[0m配置环境变量，然后进行初始化 \n"
  printf "2. \033[0;31mhh\033[0m，显示hh-system主界面 \n"
  printf "3. \033[0;31mhh <command>\033[0m，执行对应命令 \n"
  echo

  printf "【二】Main commands: \n"
  printf " \033[0;31mcd-hw\033[0m \t 进入build 华为 provider后的目录，支持自定义\n"
  printf " \033[0;31mcd-fd\033[0m \t 进入build 法电 provider后的目录，支持自定义\n"
  printf " \033[0;31mcd-gg\033[0m \t 进入build G42  provider后的目录，支持自定义\n"
  printf " \033[0;31mcd-std\033[0m  进入windows下本地日常学习目录，支持自定义\n"
  printf " \033[0;31mcd-loc\033[0m  进入windows下本地代码存放目录，支持自定义\n"
  echo

  printf " \033[0;31mb-hw\033[0m  build tf-huaweicloud project，生成二进制文件\n"
  printf " \033[0;31mb-fd\033[0m  build tf-flexibleengine project，生成二进制文件\n"
  printf " \033[0;31mb-gg\033[0m  build tf-g42cloud project，生成二进制文件\n"
  echo

  printf " \033[0;31mtf init\033[0m     执行terraform init\n"
  printf " \033[0;31mtf plan\033[0m     执行terraform plan\n"
  printf " \033[0;31mtf apply\033[0m    执行terraform apply\n"
  printf " \033[0;31mtf destroy\033[0m  执行terraform destroy\n"
  echo

  printf " \033[0;31mcms\033[0m     圣诞快乐！\n"
  printf " \033[0;31mmonkey\033[0m  一只小猴子\n"
  printf " \033[0;31mmeinv\033[0m   该命令没有描述信息\n"
  echo

  printf "【三】System commands: \n"
  printf " \033[0;31m--help\033[0m    查看hh-system帮助 \n"
  printf " \033[0;31m--charge\033[0m  查看hh-system定价以及如何开通\033[0;33m黄金会员\033[0m、\033[0;36m铂金会员\033[0m、\033[0;31m终身会员\033[0m \n"
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
