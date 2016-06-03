FROM debian:jessie

RUN apt-get update && apt-get install -y default-jre-headless jsvc wget
RUN wget  wget http://dl.ubnt.com/crmpoint/package/crmpoint_0.3.5_amd64.deb &&\
    dpkg -i crmpoint_0.3.5_amd64.deb &&\
    rm crmpoint_0.3.5_amd64.deb && \ 
    apt-get install -fy

#RUN sed -i -e's/JAVA_HOME=/#JAVA_HOME=/' /etc/init.d/aircontrol
#RUN sed -i -e's/export\ JAVA_HOME/#export JAVA_HOME/' /etc/init.d/aircontrol

EXPOSE 443
EXPOSE 80

#RUN mkdir -p /usr/share/aircontrol/logs/ &&\
#    touch /usr/share/aircontrol/logs/server.log
#
ENTRYPOINT service crmpoint start && tail -f /usr/share/crmpoint/logs/*
