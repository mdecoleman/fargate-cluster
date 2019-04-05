#!/bin/bash

STACK_NAME=$1

aws cloudformation deploy  --capabilities CAPABILITY_NAMED_IAM --stack-name $STACK_NAME --template-file service.yaml