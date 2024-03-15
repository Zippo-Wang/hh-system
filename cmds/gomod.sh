#!/bin/bash

source $hh_project_path/main/constants.sh

f_go_mod(){
    printf "${font_green}${go_mod_tidy}执行中...${cend} \n"
    ${go_mod_tidy}
    printf "${font_green}${go_mod_tidy}执行完成！${cend} \n"

    printf "${font_green}${go_mod_vendor}执行中...${cend} \n"
    ${go_mod_vendor}
    printf "${font_green}${go_mod_vendor}执行完成！${cend} \n"
}
