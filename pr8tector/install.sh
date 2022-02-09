#!/bin/bash

sudo cp ./kubectl-pr8tect /usr/local/bin/kubectl-pr8tect

sudo rm -f /usr/local/bin/kubectl-protect
sudo rm -f /usr/local/bin/kubectl-pr8
sudo ln -s /usr/local/bin/kubectl-pr8tect /usr/local/bin/kubectl-protected
sudo ln -s /usr/local/bin/kubectl-pr8tect /usr/local/bin/kubectl-pr8

echo "Plugin updated" # check if update is necessary

alias_code="alias k8p='kubectl pr8tect'"
if grep -Fxq "$alias_code" ${HOME}/.bashrc
then
    echo "Alias already created. Skipped."
else
    echo "$alias_code" >> $HOME/.bashrc
fi
