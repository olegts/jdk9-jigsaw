#!/bin/bash

#set -eu

#source ../../common-functions.sh

#echo ""
#echo "${info} *** Running 'com.greetings.Main' from within the mods folder (module 'com.greetings' is dependent on 'org.astro'). *** ${normal}"
#echo
/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/java \
     -p mods \
     -m com.greetings/com.greetings.Main

# See ../01_Greetings/run.sh for explanations to above commands
