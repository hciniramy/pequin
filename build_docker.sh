#!/bin/bash

set -e
 
docker build -t pequin_jessie -f docker/Dockerfile .

# Test created image
docker run -it pequin_jessie bash -c 'cd $PEQUIN/pepper && ./pepper_compile_and_setup_V.sh mm_pure_arith mm_pure_arith.vkey mm_pure_arith.pkey && ./pepper_compile_and_setup_P.sh mm_pure_arith'
