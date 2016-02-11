#!/bin/bash

set -e
export TERM=dumb # needed for Gradle: https://issues.gradle.org/browse/GRADLE-2634

pushd github/apps/spark-hello-world/
./gradlew distZip
popd

cp github/apps/spark-hello-world/manifest.yml package/manifest.yml
cp github/apps/spark-hello-world/build/distributions/app.zip package/app.zip
