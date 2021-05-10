FROM golang:1.15.7-buster
RUN mkdir -p /scripts
COPY dockerscheduler.sh /scripts
WORKDIR /scripts
RUN chmod +x dockerscheduler.sh
RUN dockerscheduler.sh
