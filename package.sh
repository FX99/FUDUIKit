#! bin/sh

tag_name=`git tag`
echo "******** 当前库版本：${tag_name}"
absolute_dir=`pwd`

# 当前目录名称
dir_name=${absolute_dir##*/}
echo "******** 开始打包${dir_name}"
pod package ${dir_name}.podspec --force

# pod自动生成的包目录
auto_lib_dir="${dir_name}-${tag_name}"
framework_name=${dir_name}.framework

echo "******** 备份已有framework文件 ********"
rm -rf ./${framework_name}.backup
cp -a ./${framework_name} ./${framework_name}.backup
rm -rf ./${framework_name}

echo "******** 开始拷贝framework到集成目录"
cp -a ./${auto_lib_dir}/ios/${framework_name} ./${framework_name}