#!/bin/sh

set -e
export TERM=dumb # needed for Gradle: https://issues.gradle.org/browse/GRADLE-2634

cd github/pipelines/jvm-test-deploy-pws/app
./gradlew test
