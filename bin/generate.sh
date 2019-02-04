#!/bin/bash

cluster="$1"

if [ -z "$cluster" ]
then
  cluster=default
fi

export KR8_BASE=$(pwd)
export PATH=$PATH:$KR8_BASE/bin

task


