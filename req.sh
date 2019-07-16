#!/bin/bash
set -x
c=$1
num=$2
let inp=c*50
mkdir -p cloud_run_results
ab -n $inp -c $c https://build-run-go-multiple-uaa5i34bwq-uc.a.run.app/fib/$num \
> cloud_run_results/$num-$inp-$c.txt
