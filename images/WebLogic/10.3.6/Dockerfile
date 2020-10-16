FROM centos:7.8.2003

MAINTAINER lubinlew "https://github.com/LubinLew"


## JDK-8u261
ADD  reproducer/jdk-8u261-linux-x64.tar.gz /usr/local/
RUN  mv /usr/local/jdk1.8.0_261  usr/local/jdk
ENV  JAVA_HOME=/usr/local/jdk
ENV  JRE_HOME=/usr/local/jdk/jre
ENV  CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
ENV  PATH=$PATH:$JAVA_HOME/bin


## WebLogic-10.3.6
RUN  mkdir /weblogic
COPY reproducer/wls1036_generic.jar    /weblogic/
COPY reproducer/silent.xml             /weblogic/
COPY reproducer/domain-config.rsp      /weblogic/
RUN  java -jar /weblogic/wls1036_generic.jar -mode=silent -silent_xml=/weblogic/silent.xml
RUN  /weblogic/wlserver/common/bin/config.sh -mode=silent -silent_script=/weblogic/domain-config.rsp
RUN  rm -f /weblogic/wls1036_generic.jar /weblogic/silent.xml /weblogic/domain-config.rsp


## http://<IP>:7001/console (login: weblogic/weblogic123)
EXPOSE 7001


COPY reproducer/start.sh  /weblogic/
RUN  chmod +x /weblogic/start.sh

## ENTRYPOINT
ENTRYPOINT ["/weblogic/start.sh"]

