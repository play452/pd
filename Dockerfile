FROM ubuntu:20.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y openjdk-11-jdk-headless
RUN wget https://download.jetbrains.com/python/pycharm-community-2024.2.4.tar.gz?_gl=1*k26r36*_gcl_au*MTEwMTMxNDIzMC4xNzI5ODExMzY2*_ga*MjkyNDMxMzQ1LjE3Mjk4MTEzNjQ.*_ga_9J976DJZ68*MTcyOTgxMTM2My4xLjEuMTcyOTgxMTQwNS4yMS4wLjA.
RUN tar xzf pycharm-community-2024.2.4.tar.gz
RUN mkdir /opt/pycharm
RUN mv pycharm-community-* /opt/pycharm/
ENV PYCHARM_HOME=/opt/pycharm
ENV PATH=$PATH:$PYCHARM_HOME/bin
RUN rm pycharm-community-2024.2.4.tar.gz
EXPOSE 8112

CMD ["sh", "-c", "/opt/pycharm/bin/pycharm.sh"]
