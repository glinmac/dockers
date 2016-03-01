HBase/HDP
===

Image with HBase+Zookeeper from HDP 2.3.2 inspired from [nerdammer/hbase](https://github.com/nerdammer/dockers)


Run
---

```bash
    docker run -p 2181:2181 -p 60010:60010 -p 60000:60000  -p 60030:60030 -p 60020:60020 glinmac/hbase-hdp2.3
```

You'll need to add the running container name into your ``/etc/hosts``, for instance

```
192.168.99.100 bc073e1e9e26
```
