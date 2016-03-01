FROM glinmac/centos-java8:latest

MAINTAINER Guillaume Gardey "glinmac@gmail.com"

RUN \
	curl --output /etc/yum.repos.d/hdp.repo http://public-repo-1.hortonworks.com/HDP/centos6/2.x/updates/2.3.2.0/hdp.repo && \
	yum install -y zookeeper kafka

ADD start-services.sh /usr/bin/start-services

CMD ["start-services"]

EXPOSE 2181 9092
