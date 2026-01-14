# Base image
FROM openjdk:11-jre-slim

# Install JMeter
ENV JMETER_VERSION 5.7
RUN apt-get update && apt-get install -y wget unzip && \
    wget https://downloads.apache.org//jmeter/binaries/apache-jmeter-$JMETER_VERSION.zip -O /tmp/jmeter.zip && \
    unzip /tmp/jmeter.zip -d /opt/ && \
    rm /tmp/jmeter.zip

ENV JMETER_HOME /opt/apache-jmeter-$JMETER_VERSION
ENV PATH $JMETER_HOME/bin:$PATH

WORKDIR /tests

# Default command
CMD ["jmeter", "-v"]
