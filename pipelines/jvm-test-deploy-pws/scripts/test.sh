#!/bin/sh

set -e
export TERM=dumb # needed for Gradle

cd pipelines/pipelines/jvm-test-deploy-pws/app
./gradlew test
