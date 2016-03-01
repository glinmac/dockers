#!/bin/sh

# Start zookeeper
/usr/hdp/current/zookeeper-server/bin/zookeeper-server start

HBASE_CONF_DIR=/etc/hbase/conf

# Start regionserver
/usr/hdp/2.3.2.0-2950/hbase/bin/hbase-daemon.sh --config ${HBASE_CONF_DIR} start regionserver

# Start master
/usr/hdp/2.3.2.0-2950/hbase/bin/hbase-daemon.sh --config ${HBASE_CONF_DIR} foreground_start master
