#!/bin/bash

export DD_TRACE_DEBUG=true 
export DD_VERSION="1.0.4"
export DD_SERVICE="spring-webflux-reactive-rest-api-sample"
java -javaagent:/home/ec2-user/projects/spring-webflux/spring-webflux-reactive-rest-api-demo/dd-java-agent.jar -Ddd.logs.injection=true -Ddd.trace.sample.rate=1 -Ddd.profiling.enabled=true -XX:FlightRecorderOptions=stackdepth=256 -jar target/webflux-demo-0.0.1-SNAPSHOT.jar --server.port=7070

