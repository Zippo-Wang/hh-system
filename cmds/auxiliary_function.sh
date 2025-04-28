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

# 因为hh系统不支持第3个参数，所以这个不能自定义目录~
# 这个功能不上线！
f_gci() {
    var_cmd=${1}    # $gci_csi $gci_ccm
    var_dir=${2}
    if ! command -v ${1} >/dev/null 2>&1 ; then
        printf "${level_warn}你电脑没gci, 正在安装... \n"
        go install github.com/daixiang0/gci@latest
    fi

#     if [[ ${var_cmd} == ${gci_csi} ]]; then
#         gci write --section standard --section default --section "prefix(github.com/huaweicloud/huaweicloud-csi-driver)" ${var_dir}
#     elif [[ ${var_cmd} == ${$gci_ccm} ]]; then
#         gci write --section standard --section default --section "prefix(github.com/huaweicloud/cloud-provider-huaweicloud)" ${var_dir}
#     fi

    printf "${level_info}${font_green1}${var_cmd}执行完成！${cend} \n"
}
