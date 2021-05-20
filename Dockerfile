FROM openjdk:8-jre
RUN apt-get update && apt-get -y install tzdata && apt-get -y install unzip
ENV TZ America/Santiago
RUN wget https://svn.wso2.org/repos/wso2/scratch/G-Reg/5.4.0/wso2greg-5.4.0.zip
RUN unzip wso2greg-5.4.0.zip -d /opt
EXPOSE 9763 9443 80 
CMD sh -c '/opt/wso2greg-5.4.0/bin/wso2server.sh'