#!/bin/bash

set -e
export TERM=dumb # needed for Gradle: https://issues.gradle.org/browse/GRADLE-2634

pushd github/apps/spark-hello-world
./gradlew test
popd
