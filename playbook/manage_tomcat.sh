#!/bin/bash

TOMCAT_INSTANCE=$1
ACTION=$2
TOMCAT_BIN_PATH="/opt/docm/${TOMCAT_INSTANCE}/bin"

case $ACTION in
  start)
    echo "Starting Tomcat service..."
    cd $TOMCAT_BIN_PATH
    ./startup.sh
    ;;
  stop)
    echo "Stopping Tomcat service..."
    cd $TOMCAT_BIN_PATH
    ./shutdown.sh
    ;;
  status)
    echo "Checking Tomcat service status..."
    ps -ef | grep tomcat
    ;;
  *)
    echo "Usage: $0 {tomcat_instance} {start|stop|status}"
    exit 1
    ;;
esac

