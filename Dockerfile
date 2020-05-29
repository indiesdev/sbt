FROM adoptopenjdk/openjdk8:jdk8u252-b09-alpine-slim

ARG SBT_VERSION=1.3.10

ENV PATH $PATH:/sbt/bin

RUN apk add --no-cache --update bash && \
    wget https://piccolo.link/sbt-$SBT_VERSION.tgz && \
    tar -xzvf sbt-$SBT_VERSION.tgz && \
    rm sbt-$SBT_VERSION.tgz

ENTRYPOINT [ "sbt" ]