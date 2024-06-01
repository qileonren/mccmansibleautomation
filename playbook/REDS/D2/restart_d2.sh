#!/bin/bash

# Tomcat安装路径
TOMCAT_HOME="/opt/docm/tomcat9_instance_0/"

# 停止Tomcat
echo "Stopping Tomcat..."
$TOMCAT_HOME/bin/shutdown.sh

# 等待Tomcat完全停止
sleep 10

# 启动Tomcat
echo "Starting Tomcat..."
$TOMCAT_HOME/bin/startup.sh

echo "D2 service has been restarted."

