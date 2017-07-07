#!/bin/bash

#set -eu

#source ../../common-functions.sh

#COM_GREETINGS_FOLDER="mods/com.greetings"
#ORG_ASTRO_FOLDER="mods/org.astro"

#echo ""
#echo "${info} *** Displaying the contents (source files) of the 'src' folder *** ${normal}"
#runTree src

#echo ""
#echo "${info} *** Compiling module in folder $ORG_ASTRO_FOLDER *** ${normal}"
/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/javac -d mods/org.astro \
        src/org.astro/module-info.java \
        src/org.astro/org/astro/World.java

#echo ""
#echo "${info} *** Displaying the contents (modules) of the '$ORG_ASTRO_FOLDER' folder *** ${normal}"
#runTree "$ORG_ASTRO_FOLDER"

#echo ""
#echo "${info} *** Compiling module in folder '$COM_GREETINGS_FOLDER' and linking it with module '$ORG_ASTRO_FOLDER' *** ${normal}"
/Users/oleg/dev/jdk-9.jdk/Contents/Home/bin/javac --module-path mods \
      -d mods/com.greetings \
      src/com.greetings/module-info.java \
      src/com.greetings/com/greetings/Main.java

# *************************************************************************************
#
# In the above the module 'org.astro' exports the package 'org.astro' and the module 'com.greetings' imports the package 'org.astro'.
# The modules must be compiled in this order, in order for the compiler to find the dependency and fulfill it.
#
# *************************************************************************************

#echo ""
#echo "${info} *** Displaying the contents (modules) of the '$COM_GREETINGS_FOLDER' folder *** ${normal}"
#runTree "$COM_GREETINGS_FOLDER"

# See ../01_Greetings/compile.sh for explanations to above commands
