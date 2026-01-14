#!/bin/bash
# Usage: ./run-jmeter.sh <test-file.jmx>

TEST_FILE=$1
RESULT_DIR=/tests/results

mkdir -p $RESULT_DIR

if [ -z "$TEST_FILE" ]; then
    echo "Usage: $0 <test-file.jmx>"
    exit 1
fi

echo "Running JMeter test: $TEST_FILE"
jmeter -n -t $TEST_FILE -l $RESULT_DIR/results.jtl -j $RESULT_DIR/jmeter.log
