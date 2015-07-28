FROM debian:8

MAINTAINER James Andariese <james@strudelline.net>

RUN apt-key adv --keyserver pool.sks-keyservers.net --recv-keys 18ADB31CF18AD6BB && \
    echo 'deb http://www.xpra.org jessie main' > /etc/apt/sources.list.d/xpra.list && \
    apt-get update && \
    apt-get install -y xpra python-crypto && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 10000

ENTRYPOINT ["xpra", "start", ":100", "--bind-tcp=0.0.0.0:10000", "--exit-with-children", "--no-daemon", "--sharing", "--password-file=/password", "--no-pulseaudio", "--no-dbus-proxy", "--encryption=AES"]
