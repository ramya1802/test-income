#!/bin/bash

set -eu

BUILD_TYPE="${1}"
REL_DIR="resource-tutorial"

echo "Automated build option selected, proceeding..."



TEMP1=`jq -r '.TEMP1' $REL_DIR/versions.json`
TEMP2=`jq -r '.TEMP2' $REL_DIR/versions.json`

echo "TEMP1Y=$TEMP1"
echo "TEMP2=$TEMP2"
echo "testinggggg"


if [[ $BUILD_TYPE == "concourse-build" ]]; then
    # VARIABLE OVERRIDES
    echo "${TEMP1}.`date +%Y%m%d`" > build-output/docker.tag
    echo "After building, the tag for the docker image will be " && cat build-output/docker.tag
fi
