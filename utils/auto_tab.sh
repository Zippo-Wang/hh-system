#!/usr/bin/env bash

_hh_auto_tab(){
  opts1="cd-hw cd-fd cd-gg cd-loc cd-std b-hw b-fd b-gg mk-std tf cms monkey meinv -help --help -charge --charge"
  opts2="init plan apply destroy"
	case $COMP_CWORD in
	1)
		COMPREPLY=($(compgen -W "${opts1}" -- ${COMP_WORDS[COMP_CWORD]}));;
	2)
		if [[ ${COMP_WORDS[1]} == "tf" ]];
		then
		  COMPREPLY=($(compgen -W "${opts2}" -- ${COMP_WORDS[COMP_CWORD]}))
		fi
	esac
}
complete -F _hh_auto_tab hh

