#!/bin/bash

rsync -av --delete --exclude=$0 --exclude=.git /root/code/home-saltstack/. /srv/salt/.
