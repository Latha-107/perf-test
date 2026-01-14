#!/bin/bash
# Upload JMeter results to S3

S3_BUCKET=$1
RESULT_DIR=/tests/results

if [ -z "$S3_BUCKET" ]; then
    echo "Usage: $0 <s3-bucket-name>"
    exit 1
fi

aws s3 cp $RESULT_DIR s3://$S3_BUCKET/ --recursive
echo "Results uploaded to s3://$S3_BUCKET/"
