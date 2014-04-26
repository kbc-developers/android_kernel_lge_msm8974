#!/bin/bash

export BUILD_TARGET=LGE
. lgl22.config

time ./_build-bootimg.sh $1
