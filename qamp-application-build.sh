#!/usr/bin/env bash

set -e

# absolute path
export WORKSPACE="/home/wjn/workspace"
export PATH=$PATH:/home/wjn/eclipse/gnutools/arm-eabi/bin
make -r -j 4 ECOSCFG=$WORKSPACE/ecos-config-qamp-ram OBJDIR=build qamp-application.bin version.ini
