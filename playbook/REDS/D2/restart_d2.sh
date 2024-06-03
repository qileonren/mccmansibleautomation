#!/bin/bash

# Tomcat installation path
TOMCAT_HOME="/opt/docm/tomcat9_instance_0"

# Stop Tomcat
echo "Stopping Tomcat..."
$TOMCAT_HOME/bin/shutdown.sh

# Waiting for Tomcat to fully stop
sleep 10

# Start Tomcat
echo "Starting Tomcat..."
$TOMCAT_HOME/bin/startup.sh

echo "D2 service has been restarted."

