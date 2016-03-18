FROM quay.io/pires/docker-jre:8u72

ENV IGNITE_VERSION 1.5.0.final
ENV IGNITE_PKG_NAME apache-ignite-fabric-$IGNITE_VERSION-bin

# Install Apache Ignite
RUN apk update; apk upgrade; apk add bash; \
  wget -c http://apache.go-parts.com/ignite/$IGNITE_VERSION/$IGNITE_PKG_NAME.zip; \
  unzip $IGNITE_PKG_NAME.zip; mv $IGNITE_PKG_NAME /ignite; \
  rm -f $IGNITE_PKG_NAME.zip; \
  rm -rf $(find /ignite | egrep "(\.(exe|bat)$|sigar/.*(dll|winnt|x86-linux|solaris|ia64|freebsd|macosx))"); \
  find /ignite -name docs | xargs -I {} rm -rf {}; \
  find /ignite -name examples | xargs -I {} rm -rf {}

WORKDIR /ignite

CMD ["/ignite/bin/ignite.sh"]
