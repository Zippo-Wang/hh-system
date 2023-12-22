# hh-system使用说明

### 1、clone代码
```git
git clone git@github.com:Zippo-Wang/hh-system.git
```
### 2、编辑环境变量
```bash

# 编辑环境变量
vim /home/huawei/.bashrc

# 填写main.sh所在的路径
alias hh="source path/main/main.sh"

# 使环境变量生效
source /home/huawei/.bashrc
```

### 3、示例
```bash
hh cd-gg
hh cms
```

### 4、如果是从windows下载的代码，再上传到Linux运行，可能会遇到格式转换问题，需要先运行hh-system/utils/format_trans.sh
```bash
sh $PATH/hh-system/utils/format_trans.sh
```
### 5、系统展示
```bash
hh cms
```
![img.png](img.png)
