FROM debian:11
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
ARG USER=root
USER $USER
COPY . .
RUN pip3 install -r requirements.txt
