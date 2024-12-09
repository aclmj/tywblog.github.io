# 使用官方 OpenJDK 基础镜像
FROM tomcat:9.0-jdk8

# 设置工作目录
WORKDIR /usr/local/tomcat/webapps/

# 复制 .war 文件到 Tomcat 的 webapps 目录
COPY ForestBlog-1.0.0-SNAPSHOT.war ROOT.war

# 暴露端口 8080
EXPOSE 8080

# 启动 Tomcat
CMD ["catalina.sh", "run"]
