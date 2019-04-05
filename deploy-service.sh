#!/bin/bash

STACK_NAME=$1

echo 'Checking if stack exists...'
if ! aws cloudformation describe-stacks --stack-name $1 ; then
    echo 'Creating stack'
    aws cloudformation create-stack --capabilities CAPABILITY_NAMED_IAM \
                               --stack-name $STACK_NAME \
                               --template-body file://./service.yaml \
                               --parameters file://./service.parameters.json
else
    echo 'Updating stack'
    aws cloudformation update-stack --capabilities CAPABILITY_NAMED_IAM \
                               --stack-name $STACK_NAME \
                               --template-body file://./service.yaml \
                               --parameters file://./service.parameters.json
fi