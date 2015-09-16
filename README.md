# docker-apache-ignite
Lean (310MB) Apache Ignite docker image powered by Alpine.

## Software

* Apache Ignite 1.3.0
* Oracle JRE 8 Update 60

## Run

```
docker run --name ignite -d --net=host quay.io/pires/docker-apache-ignite:1.3.0
```

Now, run:
```
$ docker logs -f ignite
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=256m; support was removed in 8.0
[11:32:21]    __________  ________________
[11:32:21]   /  _/ ___/ |/ /  _/_  __/ __/
[11:32:21]  _/ // (7 7    // /  / / / _/
[11:32:21] /___/\___/_/|_/___/ /_/ /___/
[11:32:21]
[11:32:21] ver. 1.3.0-incubating#20150710-sha1:2ade6d00
[11:32:21] 2015 Copyright(C) Apache Software Foundation
[11:32:21]
[11:32:21] Ignite documentation: http://ignite.incubator.apache.org
[11:32:21]
[11:32:21] Quiet mode.
[11:32:21]   ^-- Logging to file '/ignite/work/log/ignite-0b0f5c9c.0.log'
[11:32:21]   ^-- To see **FULL** console log here add -DIGNITE_QUIET=false or "-v" to ignite.{sh|bat}
[11:32:21]
[11:32:21] Configured plugins:
[11:32:21]   ^-- None
[11:32:21]
[11:32:23] To start Console Management & Monitoring run ignitevisorcmd.{sh|bat}
[11:32:23]
[11:32:23] Ignite node started OK (id=0b0f5c9c)
[11:32:23] Topology snapshot [ver=1, server nodes=1, client nodes=0, CPUs=1, heap=1.0GB]
```
