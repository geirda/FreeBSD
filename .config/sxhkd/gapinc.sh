#!/bin/sh
GAPVERDI=`bspc config -d focused window_gap`
GAPSUM=$((GAPVERDI + 5))
bspc config -d focused window_gap $GAPSUM
