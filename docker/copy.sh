#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20210908.sql ./mysql/db
cp ../sql/ry_config_20211118.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../bubo-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy bubo-gateway "
cp ../bubo-gateway/target/bubo-gateway.jar ./ruoyi/gateway/jar

echo "begin copy bubo-auth "
cp ../bubo-auth/target/bubo-auth.jar ./ruoyi/auth/jar

echo "begin copy bubo-visual "
cp ../bubo-visual/bubo-monitor/target/bubo-visual-monitor.jar  ./ruoyi/visual/monitor/jar

echo "begin copy bubo-modules-system "
cp ../bubo-modules/bubo-system/target/bubo-modules-system.jar ./ruoyi/modules/system/jar

echo "begin copy bubo-modules-file "
cp ../bubo-modules/bubo-file/target/bubo-modules-file.jar ./ruoyi/modules/file/jar

echo "begin copy bubo-modules-job "
cp ../bubo-modules/bubo-job/target/bubo-modules-job.jar ./ruoyi/modules/job/jar

echo "begin copy bubo-modules-gen "
cp ../bubo-modules/bubo-gen/target/bubo-modules-gen.jar ./ruoyi/modules/gen/jar

