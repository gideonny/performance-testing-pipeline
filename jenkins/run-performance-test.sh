#!/bin/bash

# Set Java path (optional)
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export PATH=$JAVA_HOME/bin:$PATH

# Paths
JMETER_PATH=/var/jenkins_home/apache-jmeter-5.6.3/bin
TEST_PLAN="/var/jenkins_home/workspace/jmeter-demoblaze/test-plan.jmx"
RESULT_PATH="/var/jenkins_home/workspace/jmeter-demoblaze/result.jtl"
REPORT_PATH="/var/jenkins_home/workspace/jmeter-demoblaze/HTML_Report"

# Run JMeter in non-GUI mode and save results
$JMETER_PATH/jmeter -n -t "$TEST_PLAN" -l "$RESULT_PATH"

# Ensure HTML report directory exists
mkdir -p "$REPORT_PATH"

# Generate HTML report
$JMETER_PATH/jmeter -g "$RESULT_PATH" -o "$REPORT_PATH"
