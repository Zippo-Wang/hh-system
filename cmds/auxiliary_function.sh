#!/bin/bash

source $hh_project_path/main/constants.sh

# go mod tidy 和 go mod vendor
f_go_mod(){
    printf "${level_info}${font_green1}${go_mod_tidy}执行中...${cend} \n"
    ${go_mod_tidy}
    printf "${level_info}${font_green1}${go_mod_tidy}执行完成！${cend} \n"

    printf "${level_info}${font_green1}${go_mod_vendor}执行中...${cend} \n"
    ${go_mod_vendor}
    printf "${level_info}${font_green1}${go_mod_vendor}执行完成！${cend} \n"
}

