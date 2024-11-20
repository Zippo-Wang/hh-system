#!/usr/bin/env bash

# x1='tf'
# x2='init'
# x3="$x1 $x2"
# echo $x3

# 字体颜色
#echo "${font_red}xxx${cend}"
#echo -e "\033[0;31m没有这个命令：\033[0mhh $@"

# 获取命令的返回结果
#res=$(pwd)
#echo $res

# 字符串包含
#str1="helloworld"
#str2="orl"
#if [[ $str1 =~ $str2 ]]
#then
#  echo "xxx"
#fi

# 定义函数
version_gt(){ test "$(echo "$@" | tr " " "\n" | sort -V | head -n 1)" != "$1"; }
version_lt(){ test "$(echo "$@" | tr " " "\n" | sort -rV | head -n 1)" != "$1"; }


VERSION="2.0.0"
VERSION2="2.0.1"
if version_lt $VERSION $VERSION2; then
   echo "$VERSION is greater than $VERSION2"
fi
