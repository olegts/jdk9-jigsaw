#!/bin/bash

#set -eu

#source ../../common-functions.sh

#echo ""
#echo "${info} *** Running 'com.greetings.Main' from within the module package in the 'mlib' folder (running 'org.astro.World' from within the module package in the 'mlib' folder) *** ${normal}"
#echo
/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/java --module-path mlib \
     --module com.greetings

# See ../01_Greetings/run.sh for explanations to above commands
# Also see how the --module-path can read module packages (jar files) in 'mlib' and take them as source modules for execution
