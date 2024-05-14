#!/bin/bash
source $hh_project_path/main/constants.sh

# 检测当前版本是不是最新版本
version_gt(){ test "$(echo "$@" | tr " " "\n" | sort -V | head -n 1)" != "$1"; }
version_lt(){ test "$(echo "$@" | tr " " "\n" | sort -rV | head -n 1)" != "$1"; }
check_upgrade(){
    API_URL="https://api.github.com/repos/${owner}/${repo}/releases/latest"
    response=$(curl -s "$API_URL")
    latest_version=$(echo "$response" | grep -o '"tag_name": "[^"]*' | sed 's/"tag_name": "//')

    cur_v="${sys_current_version:1}"
    lat_v="${latest_version:1}"

    if [[ ${lat_v} == "" ]]; then return ${eq_version}; fi;

    if version_lt ${cur_v} ${lat_v}; then
       echo -e "${level_warn}${font_yellow1}当前版本号:${cur_v}，最新版本号:${lat_v}，建议更新获取最新功能! ${cend} \n"
       return ${low_version}
    elif version_gt ${cur_v} ${lat_v}; then
       echo -e "${level_error}${font_red1}当前版本号:${cur_v}，最新版本号:${lat_v}，请勿修改版本号! 建议立即更新! ${cend} \n"
       return ${high_version}
    else
       echo -e "${level_info}${font_green1}版本号相同${cend} \n"
       return ${eq_version}
    fi
}
