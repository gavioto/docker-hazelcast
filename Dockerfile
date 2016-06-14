FROM hazelcast/hazelcast:latest

ADD hazelcast.xml /opt/hazelcast/
ADD http://central.maven.org/maven2/javax/cache/cache-api/1.0.0/cache-api-1.0.0.jar /opt/hazelcast/
ADD launch.sh /

ENTRYPOINT /launch.sh
CMD ""
