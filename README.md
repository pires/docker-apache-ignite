# docker-apache-ignite
Lean (274MB) Apache Ignite Docker image based on `alpine:edge` and OpenJDK 8.

[![Docker Repository on Quay.io](https://quay.io/repository/pires/docker-apache-ignite/status "Docker Repository on Quay.io")](https://quay.io/repository/pires/docker-apache-ignite)

## Current software

* [OpenJDK 8u72](http://openjdk.java.net/projects/jdk8u/releases/8u72.html)
* Apache Ignite 1.5.0

## Run

```
docker run --name ignite -d --net=host quay.io/pires/docker-apache-ignite:1.5.0
```

Now, run:
```
$ docker logs -f ignite
OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=256m; support was removed in 8.0
[15:08:33]    __________  ________________
[15:08:33]   /  _/ ___/ |/ /  _/_  __/ __/
[15:08:33]  _/ // (7 7    // /  / / / _/
[15:08:33] /___/\___/_/|_/___/ /_/ /___/
[15:08:33]
[15:08:33] ver. 1.5.0-final#20151229-sha1:f1f8cda2
[15:08:33] 2015 Copyright(C) Apache Software Foundation
[15:08:33]
[15:08:33] Ignite documentation: http://ignite.apache.org
[15:08:33]
[15:08:33] Quiet mode.
[15:08:33]   ^-- Logging to file '/ignite/work/log/ignite-e82b17be.0.log'
[15:08:33]   ^-- To see **FULL** console log here add -DIGNITE_QUIET=false or "-v" to ignite.{sh|bat}
[15:08:33]
[15:08:33] OS: Linux 4.1.17-boot2docker amd64
[15:08:33] VM information: OpenJDK Runtime Environment 1.8.0_72-internal-alpine-r2-b15 Oracle Corporation OpenJDK 64-Bit Server VM 25.72-b15
[15:08:33] Configured plugins:
[15:08:33]   ^-- None
[15:08:33]
[15:08:35] Security status [authentication=off, tls/ssl=off]
[15:08:37] To start Console Management & Monitoring run ignitevisorcmd.{sh|bat}
[15:08:37]
[15:08:37] Ignite node started OK (id=e82b17be)
[15:08:37] Topology snapshot [ver=1, servers=1, clients=0, CPUs=1, heap=1.0GB]
```
