#!/bin/sh

CONF=$1
CONF=${CONF:=settings.conf}

source $CONF

aws cloudformation deploy --template-file template-packaged.yml --stack-name hello-http-$BaseStackName --capabilities CAPABILITY_NAMED_IAM CAPABILITY_IAM --parameter-overrides $PARAMS $OPTIONS
