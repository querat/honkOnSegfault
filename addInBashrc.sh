#!/bin/bash
## addInBashrc.sh for  in /home/querat_g/tmp/honkOnSegfault
## 
## Made by querat_g
## Login   <querat_g@epitech.net>
## 
## Started on  Wed Oct  5 14:01:59 2016 querat_g
## Last update Wed Oct  5 14:36:21 2016 querat_g
##

source ./vars.sh

function BashrcDejaPourri() {
    res=$(grep -E "$trapCmdGrep"  $bashrc)    
    if [[ -z "$res" ]]
        then
        echo "non"
        else
        echo "oui"
    fi
}

if [[ ! -f ~/.bashrc ]]
    then
    echo $trapCmd >> ~/.bashrc
    exit
fi

if [[ "$(BashrcDejaPourri)" == "non" ]];
then
    echo "$trapCmd" >> $bashrc
    # ne fonctionne pas dans le script à cause du fork :(
    source ~/.bashrc
fi
