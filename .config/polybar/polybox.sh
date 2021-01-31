#!/bin/bash

pkill polybar
polybar --config=/home/omar/.config/polybar/polybox top &
polybar --config=/home/omar/.config/polybar/polybox bottom &

exit 0
