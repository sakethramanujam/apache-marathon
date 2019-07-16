#!/bin/bash
set -x
c=$1
num=$2
let inp=c*50
mkdir -p app_engine_results
ab -n $inp -c $c https://build-run-go-multiple.appspot.com/fib/$num \
> app_engine_results/$num-$inp-$c.txt
