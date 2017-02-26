#!/bin/bash

rsync -av --delete --delete-excluded --exclude=deploy-salt-changes.sh --exclude=.git --exclude=.gitignore /root/code/home-saltstack/. /srv/salt/.
