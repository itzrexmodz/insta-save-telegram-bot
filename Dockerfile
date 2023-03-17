FROM debian:11
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install \
    python3 python3-dev python3-dev python3-pip python3-venv
ARG USER=root
USER $USER
COPY . .
RUN pip3 install -r requirements.txt
CMD [ "python3", "bot.py" ]
