Kafka/HDP
===

Image with Kafka+Zookeeper from HDP 2.3.2 inspired from [spotify/kafka](https://github.com/spotify/docker-kafka)


Run
---

```bash
    docker run -p 2181:2181 -p 9092:9092 --env ADVERTISED_HOST=`docker-machine ip \`docker-machine active\`` --env ADVERTISED_PORT=9092 glinmac/kafka-hdp2.3
```
