FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Detroit

RUN apt update

RUN apt install -y mesa-utils

RUN apt install -y software-properties-common

COPY diagnostics.sh ./
RUN chmod +x ./diagnostics.sh

ENV DISPLAY=:0
ENV LD_LIBRARY_PATH=/usr/lib/wsl/lib

CMD ["./diagnostics.sh"]