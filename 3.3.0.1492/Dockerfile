FROM node:alpine

LABEL maintainer="Ismael Queiroz <ismaelqueiroz@gmail.com>"

RUN set -x && apk add --update --no-cache curl openjdk8 grep sed unzip bash

# Settings
ENV TZ=America/Sao_Paulo
ARG SONAR_SCANNER_VERSION="3.3.0.1492"
ENV SONAR_SCANNER_HOME=/opt/sonar-scanner
ENV PATH $PATH:$SONAR_SCANNER_HOME/bin

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    curl --insecure -o /tmp/sonarscanner.zip -L https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip && \
	unzip /tmp/sonarscanner.zip -d /opt && mv /opt/sonar-scanner-${SONAR_SCANNER_VERSION} /opt/sonar-scanner && \
	rm /tmp/sonarscanner.zip

#   ensure Sonar uses the provided Java for musl instead of a borked glibc one
RUN sed -i 's/use_embedded_jre=true/use_embedded_jre=false/g' $SONAR_SCANNER_HOME/bin/sonar-scanner

COPY sonar-runner.properties /opt/sonar-scanner/conf/sonar-scanner.properties

# Use bash if you want to run the environment from inside the shell, otherwise use the command that actually runs the underlying stuff
CMD ["sonar-scanner", "-Dsonar.projectBaseDir=."]