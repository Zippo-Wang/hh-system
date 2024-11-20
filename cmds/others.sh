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
  printf "${font_yellow1}【一】Usage: hh <cmd1> <cmd2> ${cend}\n"
  printf "初次运行系统, 请阅读${font_green1}Readme.md${cend}配置环境变量, 然后进行初始化 \n"
  printf "${font_green1}hh${cend}           显示hh-system主界面 \n"
  printf "${font_green1}hh <c1> <c2>${cend} 执行对应命令, 1对<>表示可选 \n"
  printf "${font_green1}$common_init${cend}         ${font_blue1}系统初始化${cend}。初次运行系统, 请先进行初始化 \n"
  printf "${font_green1}TAB${cend}          ${font_blue1}自动补全${cend}。按tab键即可自动补全本系统支持的所有命令 \n"
  echo

  printf "${font_yellow1}【二】Main commands: ${cend}\n"
  printf " ${font_green1}$go_mod${cend} \t     先后执行$go_mod_tidy和$go_mod_vendor, 期间不用等着, 执行完该命令后就可以干别的去了, ${font_green1}非常方便${cend} \n"
  echo

  printf " ${font_green1}$cd_hw${cend} \t     进入terraform-huaweicloud-provider目录\n"
  printf " ${font_green1}$cd_fd${cend} \t     进入terraform-flexibleengine-provider目录\n"
  printf " ${font_green1}$cd_gg${cend} \t     进入terraform-g42cloud-provider目录\n"
  printf " ${font_green1}$cd_std${cend}      进入windows下本地日常学习目录, ${font_blue1}支持自定义(环境变量)${cend} \n"
  printf " ${font_green1}$cd_loc${cend}      进入windows下本地代码存放目录, ${font_blue1}支持自定义(环境变量)${cend} \n"
  echo

  printf " ${font_green1}$b_hw${cend}        build terraform-huaweicloud-provider, 生成二进制文件\n"
  printf " ${font_green1}$b_fd${cend}        build terraform-flexibleengine-provider, 生成二进制文件\n"
  printf " ${font_green1}$b_gg${cend}        build terraform-g42cloud-provider, 生成二进制文件\n"
  printf " ${font_green1}$b_pkr${cend}       build packer-plugin-huaweicloud, 生成二进制文件, 并放到PATH目录下\n"
  echo

  printf " ${font_yellow1}说明${cend} $tf_plan、$tf_apply、$tf_destroy后面可跟${tf_var_file}, 例如$common_tf $tf_plan $tf_var_file, 需要配置环境变量${font_green1}hh_tf_var_file_name=xxx.json ${cend}\n"
  printf " ${font_green1}$common_tf $tf_init${cend}      执行$common_terraform $tf_init\n"
  printf " ${font_green1}$common_tf $tf_plan${cend}      执行$common_terraform $tf_plan\n"
  printf " ${font_green1}$common_tf $tf_apply${cend}      执行$common_terraform $tf_apply, 且${font_blue1}无需输入yes + Enter${cend}\n"
  printf " ${font_green1}$common_tf $tf_destroy${cend}      执行$common_terraform $tf_destroy, 且${font_blue1}无需输入yes + Enter${cend}\n"
  echo

  printf " ${font_green1}$o_cms${cend}         圣诞快乐！\n"
  printf " ${font_green1}$o_monkey${cend}      一只小猴子\n"
  printf " ${font_green1}$o_meinv${cend}       该命令没有描述信息\n"
  echo

  printf "${font_yellow1}【三】System commands: ${cend}\n"
  printf " ${font_green1}$sys_help2${cend}       查看hh-system帮助, 可以输入[$sys_help1 $sys_help2 $sys_help3] \n"
  printf " ${font_green1}$sys_version2${cend}    查看hh-system版本, 可以输入[$sys_version1 $sys_version2 $sys_version3 $sys_version4] \n"
  printf " ${font_green1}$sys_charge2${cend}     查看hh-system定价以及如何开通${font_yellow1}黄金会员${cend}、${font_cyan1}铂金会员${cend}、${font_red1}终身会员${cend} \n"
}

f_version(){
  printf "hh-system_${sys_current_version} \n"
  echo
  printf "see the link for latest version: https://github.com/Zippo-Wang/hh-system \n"
}

f_charge(){
  printf "${font_red}💖${cend}\033[1;32m公益免费${cend}${font_red}💖${cend} \n"
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
