FROM glinmac/centos-java8

MAINTAINER Guillaume Gardey <glinmac@gmail.com>

ENV CATALINA_HOME /opt/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"

WORKDIR $CATALINA_HOME

ENV TOMCAT_RELEASE 8
ENV TOMCAT_VERSION 8.0.15
ENV TOMCAT_TGZ_URL http://archive.apache.org/dist/tomcat/tomcat-$TOMCAT_RELEASE/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz

RUN yum install -y tar && \
	cd /opt && \
	curl -O  "$TOMCAT_TGZ_URL" && \
	tar xzf apache-tomcat-$TOMCAT_VERSION.tar.gz --strip-components=1 -C $CATALINA_HOME && \
	rm -f apache-tomcat-$TOMCAT_VERSION.tar.gz

ADD tomcat-users.xml conf/

ENTRYPOINT ["bin/catalina.sh"]
CMD ["run"]

EXPOSE 8080
