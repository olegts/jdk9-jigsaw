#!/bin/bash

#set -eu

#source ../../common-functions.sh

COM_GREETINGS_FOLDER="mods/com.greetings"
ORG_ASTRO_FOLDER="mods/org.astro"

#echo ""
#echo "${info} *** Compiling modules in $ORG_ASTRO_FOLDER *** ${normal}"
/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/javac -d $ORG_ASTRO_FOLDER \
      src/org.astro/module-info.java \
      src/org.astro/org/astro/World.java

#echo ""
#echo "${info} *** Compiling modules in $ORG_ASTRO_FOLDER *** ${normal}"
#unTree "$ORG_ASTRO_FOLDER"

#echo ""
#echo "${info} *** Compiling modules in $COM_GREETINGS_FOLDER (with 'requires' commented out) *** ${normal}"
/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/javac --module-path mods \
       -d $COM_GREETINGS_FOLDER \
       src/com.greetings/module-info.java \
       src/com.greetings/com/greetings/Main.java

# ********************************************************************************
# Compilation does not finish due to compilation error, no artifacts are created.
# Execution does not proceed further, script exists at this point.
# ********************************************************************************

#echo ""
#echo "${info} *** Compiling modules in $COM_GREETINGS_FOLDER *** ${normal}"
#runTree "$COM_GREETINGS_FOLDER"

# See ../01_Greetings/compile.sh for explanations to above commands
