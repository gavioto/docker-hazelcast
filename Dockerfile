FROM hazelcast/hazelcast:3.6.3

ADD http://central.maven.org/maven2/javax/cache/cache-api/1.0.0/cache-api-1.0.0.jar /opt/hazelcast/
ADD https://raw.githubusercontent.com/gavioto/docker-hazelcast/master/launch.sh /
RUN chmod +x /launch.sh

ENTRYPOINT /launch.sh
CMD ""
