#! /usr/bin/env bash

touch r0_output.txt
touch r1_output.txt
touch r2_output.txt
awk 'match($0, /(\w+), (\w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" >"r0_output.txt"}' < r0_input.txt
awk '{
if (match($0, /I am (\w+). My favorite sandwich is (\w+)/, groups)){
	print "1. " groups[1] "\n" "2. " groups[2] "\n" >"r1_output.txt";
}
}' < r1_input.txt 					
awk 'match($0,/sandwich with ([A-Za-z0-9\.]+) (.*)/,groups){print "1. " groups[1] "\n" "2. " groups[2] "\n" >"r2_output.txt"}' < r2_input.txt

