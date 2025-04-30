#!/bin/bash

# Author: Vamshi
# Date: 28th-Apr
# Version: v1

# This Script will report the AWS Resource Usage.

set -x

# AWS s3
# AWS ec2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "list of s3 Buckets"
aws s3 ls

# list ec2 instances
echo "list of ec2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID'

# list lambda
echo "list of lambda Fuctions"
aws lambda list-functions

# list IAM Users
echo "list of Iam Users"
aws iam list-users