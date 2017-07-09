#!/bin/bash

#set -eu

#source ../../common-functions.sh

echo
echo "${info} *** Module information for JUnit. *** ${normal}"
echo

/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/jar -d --file=lib/junit-4.12.jar

echo
echo "${info} *** Dependency information for JUnit. *** ${normal}"
echo

/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/jdeps -s lib/junit-4.12.jar

echo
echo "${info} *** Detailed information about missing dependencies for JUnit. *** ${normal}"
echo

/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/jdeps lib/junit-4.12.jar | grep "not found"

echo
echo "${info} *** Module information for Hamcrest. *** ${normal}"
echo

/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/jar -d --file=lib/hamcrest-core-1.3.jar

echo
echo "${info} *** Dependency information for Hamcrest. *** ${normal}"
echo

/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/jdeps -s lib/hamcrest-core-1.3.jar
