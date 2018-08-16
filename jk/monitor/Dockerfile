FROM centos

ADD jdk-8u45-linux-x64.tar.gz /usr/local

ENV RUN_AS_USER=root
ENV JAVA_HOME /usr/local/jdk1.8.0_45
ENV CLASS_HOME=/usr/local/jdk1.8.0_45/lib:$JAVA_HOME/jre/lib
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib:$CLASSPATH
ENV PATH=$PATH:$JAVA_HOME/bin

ADD apache-tomcat-8.5.24.tar.gz /usr/local

EXPOSE 8080
ENTRYPOINT ["/usr/local/apache-tomcat-8.5.24/bin/catalina.sh", "run"]