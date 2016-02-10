#!/bin/sh

set -e
export TERM=dumb # needed for Gradle: https://issues.gradle.org/browse/GRADLE-2634

cd github/pipelines/jvm-test-deploy-pws/app/
./gradlew distZip
cd ../../../../

cp github/pipelines/jvm-test-deploy-pws/app/manifest.yml package/manifest.yml
cp github/pipelines/jvm-test-deploy-pws/app/build/distributions/app.zip package/app.zip
