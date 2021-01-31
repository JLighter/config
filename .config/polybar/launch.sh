#!/bin/bash

pkill polybar
polybar --config=/home/omar/.config/polybar/konpik satu &
polybar --config=/home/omar/.config/polybar/konpik dua &

exit 0
