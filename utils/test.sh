#!/usr/bin/env bash

x1='tf'
x2='init'
x3="$x1$x2"
echo $x3


# 字体颜色

echo "${font_red}xxx${cend}"
echo -e "\033[0;31m没有这个命令：\033[0mhh $@"
