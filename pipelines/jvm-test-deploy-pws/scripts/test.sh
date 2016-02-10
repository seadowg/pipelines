#!/bin/sh

set -e

cd pipelines/pipelines/jvm-test-deploy-pws/app
./gradlew test
