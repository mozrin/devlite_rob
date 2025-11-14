#!/bin/bash

##### postAttachCommand.sh
#
# Do you need to do something each time a user attaches to the container?
#
# set -eux
# export postAttachCommand=true

##### Set Helpful Environment Variables
#
# You can use alias and bash function() in this file. It is truly the bash_aliases file
# for this ubuntu image and will be copied in place and used for whenever you start a terminal.
#
# enhancement? consider mapping this or symlinking it in place so that a modification can happen 
#              after the workstation is created and initialized.

cp -f ${DEVLITE_CONTAINER_DEVCONTAINER_FOLDER}/.bash_aliases ~/.bash_aliases

##### Add your changes below here.