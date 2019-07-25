#!/bin/bash
for i in $(seq 1 500)
do 
for j in $(seq 1 100)
do
curl --header "PRIVATE-TOKEN:-XH1TmUNJ2zsTxG97cYC" --request "DELETE" "http://gitlab.junyanginfo.com/api/v4/projects/$j/pipelines/$i"
done
done
