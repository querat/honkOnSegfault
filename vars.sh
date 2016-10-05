
trapCmd="trap 'if [[ $? -eq 139 ]]; then ./honk.sh; fi' CHLD"
trapCmdGrep="^trap 'if \[\[ 0 -eq 139 \]\]; then ./honk.sh; fi' CHLD$"
bashrc=~/.bashrc
