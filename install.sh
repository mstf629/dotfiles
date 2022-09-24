#!/bin/bash

# a script for linking the config files


#make a directoray for the old configs
mkdir -p ~/olddotfiles/config


#this will find the files "/home/user/file" and print the basename "file"
FILES=$(find * -maxdepth 0 \! -name config \! -name install.sh \! -name README.md)


for FILE in $FILES
do
    FILE_PATH=$(realpath $FILE)
    if [ -e $HOME/.${FILE} ];then
        if [ -L $HOME/.${FILE} ];then
            rm -r $HOME/.${FILE}
        else
            mv $HOME/.${FILE} ~/olddotfiles/${FILE}
        fi
    fi
    ln -s $FILE_PATH ~/.${FILE}
done

#the files in .config
cd config
FILES=$(find * -maxdepth 0) 

for FILE in $FILES
do
    FILE_PATH=$(realpath $FILE)
    if [ -e $HOME/.config/${FILE} ];then
        if [ -L $HOME/.config/${FILE} ];then
            rm -r $HOME/.config/${FILE}
        else
            mv $HOME/.config/${FILE} $HOME/olddotfiles/config/${FILE}
        fi
    fi
    ln -s $FILE_PATH $HOME/.config/${FILE}
done

    
