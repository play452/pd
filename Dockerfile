FROM ubuntu:20.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y openjdk-11-jdk-headless
RUN wget https://download.jetbrains.com/pycharm/pycharm-community-edition-hmac.tar.gz
RUN tar xzf pycharm-community-edition-hmac.tar.gz
RUN mkdir /opt/pycharm
RUN mv pycharm-community-* /opt/pycharm/
ENV PYCHARM_HOME=/opt/pycharm
ENV PATH=$PATH:$PYCHARM_HOME/bin
RUN rm pycharm-community-edition-hmac.tar.gz
EXPOSE 8112

CMD ["sh", "-c", "/opt/pycharm/bin/pycharm.sh"]
