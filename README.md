# hh-system使用说明获取系统之前请确保windows和Linux已经禁用换行符```gitgit config --global core.autocrlf false```### 1、获取系统```gitgit clone git@github.com:Zippo-Wang/hh-system.git```### 2、编辑环境变量```bash# 编辑环境变量vim /home/huawei/.bashrc# 第1行`hh_code_path`替换成本地存放代码的目录# 第2行`hh_project_path`替换成hh-system project所在路径 export hh_code_path="/mnt/d/xxxxx"export hh_project_path="/mnt/d/xxxxx"hh_main='hh'alias hh="source $hh_project_path/main/main.sh"# 使环境变量生效source /home/huawei/.bashrc# 首次运行系统，需要进行初始化hh init```### 3、示例```bashhh cms```![img.png](img.png)### FAQ如果初始化失败，先使用vim进入`project_path/main/main.sh``project_path/main/constants.sh`然后输入`:set ff=unix`保存退出，再执行`hh init`