#!/usr/bin/env bash

:<<EOF
directory=${1}
echo $directory

if test -z $directory
then
  echo "[ERROR] 请输入hh-system所在目录"
  echo "[example] sh directory/hh-system/utils/format_trans.sh directory"
elif [ ! -e $directory ]
then
  echo "没有这个目录"
else
  for file in `find $directory -name *.sh -type f`; do vi $file -c 'set ff=unix | wq!'; done ;
fi
EOF
