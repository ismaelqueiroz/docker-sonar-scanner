#!/bin/sh
set -e

#SONAR_SCANNER_VERSION="3.0.3.778"
#SONAR_RUNNER_HOME="/sonarscanner"

if [[ ! -e "${SONAR_RUNNER_HOME}/sonar-scanner-${SONAR_SCANNER_VERSION}" ]]; then

    curl --location https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip \
        --insecure \
        --create-dirs \
        --output \
        "${SONAR_RUNNER_HOME}"/sonar-scanner-${SONAR_SCANNER_VERSION}.zip

    unzip -q ${SONAR_RUNNER_HOME}/sonar-scanner-${SONAR_SCANNER_VERSION}.zip -d ${SONAR_RUNNER_HOME}

    rm -rf ${SONAR_RUNNER_HOME}/sonar-scanner-${SONAR_SCANNER_VERSION}.zip

    ln -nvfs $(realpath "${SONAR_RUNNER_HOME}/sonar-scanner-${SONAR_SCANNER_VERSION}") ${SONAR_RUNNER_HOME}/default

    export PATH=$PATH:"${SONAR_RUNNER_HOME}/default/bin"

fi
