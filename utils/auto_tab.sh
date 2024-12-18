#!/usr/bin/env bash

# 每次执行init都会重写该文件, 如手动修改了本文件请及时保存
# 每次执行init都会重写该文件, 如手动修改了本文件请及时保存
# 每次执行init都会重写该文件, 如手动修改了本文件请及时保存

_hh_auto_tab(){
  opts1="cd-hw cd-fd cd-gg cd-loc cd-std b-hw b-fd b-gg
  mk-std
  tfi tfp tfa tfd tfr
  cms monkey meinv init
  help -help --help charge -charge --charge
  -v version -version --version
  go-mod
  b-pkr"

  opts2="-var"
	case $COMP_CWORD in
	1)
		COMPREPLY=($(compgen -W "${opts1}" -- ${COMP_WORDS[COMP_CWORD]}));;
	2)
		if [[ ${COMP_WORDS[1]} == "tfp" || ${COMP_WORDS[1]} == "tfa" || ${COMP_WORDS[1]} == "tfd" || ${COMP_WORDS[1]} == "tfr" ]];
		then
		  COMPREPLY=($(compgen -W "${opts2}" -- ${COMP_WORDS[COMP_CWORD]}))
		fi
	esac
}
complete -F _hh_auto_tab hh

