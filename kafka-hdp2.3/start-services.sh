#!/bin/sh

# Start zookeeper
/usr/hdp/current/zookeeper-server/bin/zookeeper-server start

KAFKA_CONF=/etc/kafka/conf/server.properties

# Set the external host and port
if [ ! -z "$ADVERTISED_HOST" ]; then
    echo "advertised host: $ADVERTISED_HOST"
    sed -r -i "s/#(advertised.host.name)=(.*)/\1=$ADVERTISED_HOST/g" $KAFKA_CONF
fi
if [ ! -z "$ADVERTISED_PORT" ]; then
    echo "advertised port: $ADVERTISED_PORT"
    sed -r -i "s/#(advertised.port)=(.*)/\1=$ADVERTISED_PORT/g" $KAFKA_CONF
fi

# Start kafka
/usr/hdp/current/kafka-broker/bin/kafka-server-start.sh $KAFKA_CONF 
