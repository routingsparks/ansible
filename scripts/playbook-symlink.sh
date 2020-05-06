#!/bin/bash

######################################################################
# Author    sparky
# Created:  2020-05-06
# ModifiedL 2020-05-06
# Purpose:  To create symlinks to playbook creation scripts.
######################################################################

echo "Creating symlinks to playbook creation scripts"

######################################################################
# Variables
######################################################################
ANSIBLES_SCRIPT_DIR=$HOME/ansible/scripts
BASH_PLAYBOOK=$HOME/development/scripts/bash/system/playbook-create.sh
PYTHON_PLAYBOOK=$HOME/development/projects/python/ansible-playbook-prep/playbook-create.py


if [[ ! -h $HOME/ansible/playbook-create.sh ]]; then
    echo "Creating symlink"
    ln -s $BASH_PLAYBOOK playbook-create.sh
else
    echo "Bash playbook creation script has already been linked."
fi

if [[ ! -h $HOME/ansible/playbook-create.py ]]; then
    echo "Creating symlink"
    ln -s $PYTHON_PLAYBOOK playbook-create.py
else
    echo "Python playbook creation script has already been linked."
fi
