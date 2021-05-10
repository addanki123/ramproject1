FROM golang:1.15.7-buster
RUN mkdir -p /scripts
COPY dockerschedular.sh /scripts
WORKDIR /scripts
RUN chmod +x dockerschedular.sh
RUN dockerschedular.sh
