#!/bin/bash

# Path to Tomcat installation
TOMCAT_HOME="/opt/docm/tomcat9_instance_0"

# Stop Tomcat
echo "Stopping Tomcat..."
$TOMCAT_HOME/bin/shutdown.sh

# Wait for Tomcat to fully stop
sleep 10

# Check if Tomcat has stopped
if ps -ef | grep -v grep | grep $TOMCAT_HOME > /dev/null
then
    echo "Tomcat is still running!"
    exit 1
else
    echo "Tomcat has stopped successfully."
fi

# Start Tomcat
echo "Starting Tomcat..."
$TOMCAT_HOME/bin/startup.sh

# Wait for Tomcat to fully start
sleep 10

# Check if Tomcat has started
if ps -ef | grep -v grep | grep $TOMCAT_HOME > /dev/null
then
    echo "Tomcat has started successfully."
else
    echo "Tomcat failed to start!"
    exit 1
fi
