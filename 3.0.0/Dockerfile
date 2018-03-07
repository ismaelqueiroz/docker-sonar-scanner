FROM node:alpine

LABEL maintainer="Ismael Queiroz <ismaelqueiroz@gmail.com>"

ENV NODE_VERSION 9.7.1
ENV SONAR_SCANNER_VERSION 3.0.3.778
ENV SONAR_RUNNER_HOME "/sonarscanner"

RUN set -x
RUN apk add --update --no-cache curl
RUN apk add --update --no-cache openjdk8

COPY ../docker-entrypoint.sh /usr/local/bin/

RUN ln -s /usr/local/bin/docker-entrypoint.sh /usr/local/bin/update

RUN chmod +x /usr/local/bin/update

RUN update

ENV PATH $PATH:"${SONAR_RUNNER_HOME}/default/bin"

CMD [ "sonar-scanner" ]