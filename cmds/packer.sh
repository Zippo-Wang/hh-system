#!/usr/bin/env bash

f_packer_build(){
    printf "${level_info}${font_green1}[${main_hh} ${b_pkr}]执行中...${cend}\n"
    (cd ${hh_code_path}/packer-plugin-huaweicloud && make install)
    printf "${level_info}${font_green1}[${main_hh} ${b_pkr}]执行完成! ${cend}\n"
}
