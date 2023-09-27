This directory contains three git objects that were
copied from ../../.git/objects.

The copied objects were so chosen that they contain 10 printable
characters in sequence.

The command used to identify the objects was:

   find .git/objects/ -name '*pack*' -o -type f -exec strings -n 10 -f {}  +

   This command was executed at git commit 98de0bbd2db237b623835cef75e744a0c77020e2.

The idea of these files is to have some files that are found if they're not
under the .git directory, but are not found if they're under the git directory.

For example, the following command also finds files under .git (which is not
always desired). To be executed in this repository's root directory:
   
   grep -rl  JMU066e01
   grep -rl  4d040031QHJ

In contrast, the following command prunes .git so that the desired
files will be found:

   find . -path './.git' -prune -o -type f -exec grep -l 4d040031QHJ {} +
