FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="Axe Developers <dev@axe.org>"
LABEL description="Dockerised AxeCore, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /home/axe

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} axe && \
    useradd -u ${USER_ID} -g axe -s /bin/bash -m -d /home/axe axe && \
    mkdir /home/axe/.axecore && \
    chown ${USER_ID}:${GROUP_ID} -R /home/axe

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER axe

VOLUME ["/home/axe"]

EXPOSE 9337 9937 19337 19937

WORKDIR /home/axe
