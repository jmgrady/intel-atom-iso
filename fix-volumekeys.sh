#!/bin/bash
sed -i 's/amixer *-q sset/amixer -D pulse sset/' ${HOME}/.config/openbox/lubuntu-rc.xml
