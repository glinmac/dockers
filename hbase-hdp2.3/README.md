HBase/HDP
===

Image with HBase+Zookeeper from HDP 2.3.2 inspired from [nerdammer/hbase](https://hub.docker.com/r/nerdammer/hbase/)

Run
---

```bash
docker run \
	-p 2181:2181 \
	-p 60010:60010 -p 60000:60000 \
	-p 60030:60030 -p 60020:60020 \
	glinmac/hbase-hdp2.3
```

For Mac/Windows (`docker-machine`), you'll need to have an alias in `/etc/hosts` pointing
to your Docker host. For instance:

```bash
192.168.99.100 bc073e1e9e26
```

To start the container with a pre-defined hostname:

```bash
docker run -h myhbase.local \
	-p 2181:2181 \
	-p 60010:60010 -p 60000:60000 \
	-p 60030:60030 -p 60020:60020 \
	glinmac/hbase-hdp2.3
```

To get the IP of your Docker host for instance

```bash
docker-machine ip $(docker-machine active)
```

