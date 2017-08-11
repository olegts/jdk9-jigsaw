# jdk9-jigsaw

Examples of some of the features of Jigsaw released in the Early Access build of JDK9.

Many of the examples here are directly from the Project Jigsaw: Module System Quick-Start Guide, see [http://openjdk.java.net/projects/jigsaw/quick-start](http://openjdk.java.net/projects/jigsaw/quick-start) but we have also contributions from the Java community.

## Setup

1. Download and install latest JDK 9 Jigsaw early access build from here - http://jdk.java.net/9

2. Setup $JAVA_HOME env variable
Linux/MacOS: `export JAVA_HOME=[jdk destination]`

3. Update $PATH env variable
Linux/MacOS: `export PATH=$JAVA_HOME/bin:$PATH`

4. Verify your setup: `java -version`

5. Please install the ```tree``` command before moving forward:

   - Linux
        ```
        sudo apt-get install tree
        sudo apt-get install wget
        ```

   - MacOSX
        ```
        install tree - http://apple.stackexchange.com/questions/128876/whats-the-equivalent-of-the-unix-tree-command-on-osx
        install wget - http://stackoverflow.com/questions/4572153/os-x-equivalent-of-linuxs-wget
        ```

   - Windows
        ```
        install `git-bash` (recommended) or `cgywin`
        ```

        The `tree` command is built into Windows. From within `git-bash` or `cygwin`.
        In case a script is invoking the `tree` command and failing, please replace the `tree -fl` keywords with `cmd //c "tree /f /a"`. If that does not work either use `ls -R` instead, except you won't see the output in a tree format.

        Or manually convert the `.sh` files into `.bat`, with minor tweaks should also work there.

        Thanks Richard Kolb ([@rjdkolb](http://github.com/rjdkolb)) for your continued support in this area.

> [P.S.] For more detailed instructions (especially for Windows users) see `DETAILED_README.md` 