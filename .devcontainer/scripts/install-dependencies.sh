#!/bin/sh

# Define styles for reserved words
# See https://www.shellhacks.com/bash-colors/
ECHO_INFO="\e[1;30mINFO\e[0m"
ECHO_WARN="\e[1;33mWARN\e[0m"
ECHO_ERROR="\e[1;31mERROR\e[0m"

##########################################
# Install npm dependencies
##########################################

# Proceed only if node_modules folder does not exist
if [ ! -d "node_modules" ]; then
    echo ${ECHO_INFO}: The 'node_modules' folder does not exist.
    echo ${ECHO_INFO}: Running 'npm clean-install'...
    echo.

    # Clean install the npm dependencies
    npm clean-install
else
    echo ${ECHO_INFO}: The 'node_modules' folder exists. Skipped clean install.
fi
