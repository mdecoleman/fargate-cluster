#!/bin/bash

STACK_NAME=$1

aws cloudformation deploy --stack-name $STACK_NAME --template-file cluster.yaml