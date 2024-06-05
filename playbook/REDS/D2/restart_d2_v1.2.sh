#!/bin/bash

# Array of Tomcat installation paths
TOMCAT_INSTANCES=("/opt/docm/tomcat9_instance_0" "/opt/docm/tomcat9_instance_1")

for TOMCAT_HOME in "${TOMCAT_INSTANCES[@]}"
do
  # Stop Tomcat
  echo "Stopping Tomcat at $TOMCAT_HOME..."
  $TOMCAT_HOME/bin/shutdown.sh

  # Waiting for Tomcat to fully stop
  sleep 10

  # Start Tomcat
  echo "Starting Tomcat at $TOMCAT_HOME..."
  $TOMCAT_HOME/bin/startup.sh

  echo "Tomcat at $TOMCAT_HOME has been restarted."
done

echo "All D2 services have been restarted."
