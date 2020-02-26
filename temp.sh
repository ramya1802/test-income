#!/bin/bash

set -eu

REL_DIR="resource-tutorial"

echo "Automated build option selected, proceeding..."



TEMP1=`jq -r '.TEMP1' $REL_DIR/test.json`
TEMP2=`jq -r '.TEMP2' $REL_DIR/test.json`

echo "TEMP1Y=$TEMP1"
echo "TEMP2=$TEMP2"
echo "testinggggg"


