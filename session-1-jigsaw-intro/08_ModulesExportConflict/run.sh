#!/bin/bash

#set -eu

#source ../../common-functions.sh

#echo
#echo "${info} *** Running 'com.greetings.Main' from within the mods folder. *** ${normal}"
#echo "${info} *** Will fail because 'org.astro' and 'org.astro2' packages are exporting the same module 'org.astro'. *** ${normal}"
#echo
/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/java \
     --module-path mods \
     --module com.greetings/com.greetings.Main
