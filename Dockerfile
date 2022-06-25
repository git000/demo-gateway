FROM java:8-jdk-alpine
MAINTAINER ext.wangxintian@jd.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


ADD target/demo-gateway-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]
