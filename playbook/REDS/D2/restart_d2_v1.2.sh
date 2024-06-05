#!/bin/bash

# Array of Tomcat installation paths
TOMCAT_INSTANCES=("/opt/docm/tomcat9_instance_0" "/opt/docm/tomcat9_instance_1")
INSTANCE_NAMES=("Instance1" "Instance2")

for i in "${!TOMCAT_INSTANCES[@]}"
do
  TOMCAT_HOME=${TOMCAT_INSTANCES[$i]}
  INSTANCE_NAME=${INSTANCE_NAMES[$i]}
  
  # Stop Tomcat
  echo "Stopping $INSTANCE_NAME..."
  $TOMCAT_HOME/bin/shutdown.sh

  # Waiting for Tomcat to fully stop
  sleep 10

  # Start Tomcat
  echo "Starting $INSTANCE_NAME..."
  $TOMCAT_HOME/bin/startup.sh

  echo "$INSTANCE_NAME has been restarted."
done

echo "All D2 services have been restarted."
