#!/bin/bash
count=1
while :
do
count=$((count+1))
echo $count
body=$(echo {\"text\":\"$count\"})
echo $body
curl -v -o /dev/null -XPOST localhost:7070/tweets -d $body 
curl -v -o /dev/null -XPOST localhost:7070/tweets -d $body -H"Content-Type: application/json"
curl -v -o /dev/null localhost:7070/tweets 
curl -v -o /dev/null localhost:7070/stream/tweets 
curl -v -o /dev/null -XPUT localhost:7070/tweets/606aa3ccb155e216da2986fd -d '{"text":"updated"}' -H"Content-Type: application/json"
sleep 5
done
