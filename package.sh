#!/bin/sh

BUCKET=$1
PREFIX=$2
OPTIONS=$3

aws cloudformation package --s3-bucket $BUCKET --s3-prefix $PREFIX --template-file template.yml --output-template-file template-packaged.yml $OPTIONS
