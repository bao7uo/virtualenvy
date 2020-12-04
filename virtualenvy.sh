#!/bin/bash

# *************************************
# virtualenvy.sh by Paul Taylor 2020
# *************************************

# Usage:

# Clone all dependency repos and the executable package repo
# into a parent directory which shares the same name as the
# executable package. 

# Add this bash script to the same directory, and execute it
# along with any args for the python executable.

# *************************************

# grab full path of this script
PARENT_DIRECTORY_PATH=$(dirname $(readlink -f $0))

# add sub directory names (of each package) to path
for PACKAGE_PATH in $PARENT_DIRECTORY_PATH/*/
  do PYTHONPATH+=:$PACKAGE_PATH
done

# grab parent directory name - i.e. executable package name
EXECUTABLE_PACKAGE="${PARENT_DIRECTORY_PATH##*/}"

PYTHONPATH=$PYTHONPATH python3 -m $EXECUTABLE_PACKAGE.__main__ $@
