#!/bin/bash

#set -eu

#source ../../common-functions.sh

#COM_GREETINGS_FOLDER="mods/com.greetings"
#ORG_ASTRO_FOLDER="mods/org.astro"

#echo ""
#echo "${info} *** Compiling modules in $ORG_ASTRO_FOLDER (with 'exports' commented out) *** ${normal}"
/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/javac -d mods/org.astro \
       src/org.astro/module-info.java \
       src/org.astro/org/astro/World.java

#echo ""
#cho "${info} *** Displaying the contents (modules) of the '$ORG_ASTRO_FOLDER' folder *** ${normal}"
#unTree "$ORG_ASTRO_FOLDER"

#echo ""
#echo "${info} *** Compiling modules in $COM_GREETINGS_FOLDER (fails with an error due to module 'org.astro' not being visible) *** ${normal}"
/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/javac --module-path mods \
      -d mods/com.greetings \
      src/com.greetings/module-info.java \
      src/com.greetings/com/greetings/Main.java

# ********************************************************************************
# Compilation does not finish due to compilation error, no artifacts are created.
# Execution does not proceed further, script exists at this point.
# ********************************************************************************

#echo ""
#echo "${info} *** Displaying the contents (modules) of the '$COM_GREETINGS_FOLDER' folder *** ${normal}"
#runTree "$COM_GREETINGS_FOLDER"

# See ../01_Greetings/compile.sh for explanations to above commands
