#!/usr/bin/env bash

f_packer_build(){
    printf "${font_green1}执行 make install...${cend}\n"
    (cd /mnt/d/code/packer-plugin-huaweicloud && make install)
    printf "${font_green1}[${main_hh} ${b_pkr}] 执行完成! ${cend}\n"
}
