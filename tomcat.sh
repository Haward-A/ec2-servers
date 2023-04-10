#!/bin/bash
sudo yum install tree -y
sudo amazon-linux-extras install -y java-openjdk11
cd /opt
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.7/bin/apache-tomcat-10.1.7.tar.gz
sudo tar -xvzf /opt/apache-tomcat-10.1.7.tar.gz
sudo mv apache-tomcat-10.1.7 tomcat10
sudo chown -R ec2-user: tomcat10
sudo ./tomcat10/bin/startup.sh
sed -i '21s/<\s*/<!-- /; 22s/\/>\s*/ -->/' /opt/tomcat10/webapps/manager/META-INF/context.xml
sed -i '55a\<role rolename="manager-gui"/>\n<role rolename="manager-script"/>\n<role rolename="manager-jmx"/>\n<role rolename="manager-status"/>\n<user username="admin" password="s3cret" roles="manager-gui"/>' /opt/tomcat10/conf/tomcat-users.xml