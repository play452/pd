FROM ubuntu:20.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y openjdk-11-jdk-headless
RUN wget https://download.jetbrains.com/python/pycharm-community-2024.2.4.tar.gz
RUN mkdir /opt/pycharm
RUN mv pycharm-community-* /opt/pycharm/
ENV PYCHARM_HOME=/opt/pycharm
ENV PATH=$PATH:$PYCHARM_HOME/bin
RUN rm pycharm-community-2024.2.4.tar.gz
EXPOSE 8112

CMD ["sh", "-c", "/opt/pycharm/bin/pycharm.sh"]
