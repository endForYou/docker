#!/bin/bash
if [ $# -gt 1 -o $# -le 0 ]; then
        echo "params count must be equal 1"
	echo "Usage: (experience|junyang_admin|junyang_pc|oms_h5pay|wx_open_pay|zyzy_webapp)"
	exit -1
fi
if [ $1 = "experience" ]; then
	port="10030:8080"
elif [ $1 = "junyang_pc" ]; then
        port="9090:9090"
elif [ $1 = "oms_h5pay" ]; then
        port="10010:8080"
elif [ $1 = "wx_open_pay" ]; then
        port="10000:8080"
elif [ $1 = "zyzy_webapp" ]; then
        port="10020:8080"
elif [ $1 = "junyang_admin" ]; then
        port="10040:8080"
elif [ $1 = "edit_oms" ]; then
        port="9080:9080"
elif [ $1 = "evaluation" ];then
	port="9070:8080"
elif [ $1 = "teacher" ]; then
        port="9060:8080"
elif [ $1 = "psychological-evaluation" ]; then
        port="9050:8080"
elif [ $1 = "eva" ]; then
	port="10031:8080"
elif [ $1 = "volunteer-admin" ]; then
	port="10032:8080"
elif [ $1 = "zhiya_gaokao" ]; then
	port="10050:3000"
elif [ $1 = "zhiya-teacher" ]; then
	port="10051:8080"
elif [ $1 = "zhya-sass" ]; then
	port="10052:8080"
fi
project_name=$1
if [ $project_name = "eva" ]; then
	project_name="h5-eva"
fi
echo $project_name

image_repository=registry.cn-huhehaote.aliyuncs.com/fdfront/$project_name
docker stop $project_name
docker rm $project_name
docker rmi -f `docker images | grep $project_name | grep latest | awk  '{print $3}'`
docker run -d --name $project_name -p $port $image_repository:latest
