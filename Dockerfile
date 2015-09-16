FROM quay.io/pires/docker-jre:8u60

ENV IGNITE_VERSION 1.3.0
ENV IGNITE_PATH apache-ignite-fabric-$IGNITE_VERSION-incubating-bin

# Install Apache Ignite
RUN apk update; apk upgrade; apk add bash; \
  wget -c http://apache-mirror.rbc.ru/pub/apache/ignite/$IGNITE_VERSION/$IGNITE_PATH.zip; \
  unzip $IGNITE_PATH.zip; mv $IGNITE_PATH /ignite; \
  rm -f $IGNITE_PATH.zip; \
  rm -rf $(find /ignite | egrep "(\.(exe|bat)$|sigar/.*(dll|winnt|x86-linux|solaris|ia64|freebsd|macosx))"); \
  rm -rf /ignite/docs /ignite/examples

WORKDIR /ignite

CMD ["/ignite/bin/ignite.sh"]
