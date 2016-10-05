#!/bin/bash

x=($RANDOM)
let "x %= 9"
aplay -q Honks/bikehorn$x.wav
