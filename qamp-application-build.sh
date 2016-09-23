#!/usr/bin/env bash

set -e

# absolute path
export WORKSPACE="/home/wjn/workspace"
export PATH=$PATH:/home/wjn/eclipse/gnutools/arm-eabi/bin

# CC='/home/wjn/bin/cc_args.py gcc' CXX='/home/wjn/bin/cc_args.py g++' -B \
make V=1 \
       -r -j 4 ECOSCFG=$WORKSPACE/ecos-config-qamp-ram OBJDIR=build qamp-application.bin version.ini \
       > compile.log

# cc_args.rb - git@github.com:WenxiJin/.clang_complete.git
ruby /home/wjn/bin/cc_args.rb compile.log
