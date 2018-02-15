#!/bin/bash

SPARK_MASTER_ENDPOINT=$1

###############################################################################################
# SPARK HOSTNAME
###############################################################################################
DEFAULT_IF="$(ip route list | awk '/^default/ {print $5}')"
IP_ADDRESS="$(ifconfig | grep -A 1 $DEFAULT_IF | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"
#SPARK_SLAVE_HOST="`hostname -f`"
SPARK_SLAVE_HOST="$IP_ADDRESS"

###############################################################################################
# RUN SPARK
###############################################################################################
CLASS="org.apache.spark.deploy.worker.Worker"
. "${SPARK_HOME}/sbin/spark-config.sh"
. "${SPARK_HOME}/bin/load-spark-env.sh"
$SPARK_HOME/bin/spark-class $CLASS --host $SPARK_SLAVE_HOST --port $SPARK_WORKER_PORT --webui-port $SPARK_WORKER_WEBUI_PORT $SPARK_MASTER_ENDPOINT