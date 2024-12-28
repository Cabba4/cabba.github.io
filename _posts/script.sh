#!/bin/bash

read -p "Give file name " NAME

FILE=/mnt/c/writeups/_posts/2020-02-28-test.md
DATE=$(date -I)

cp $FILE $DATE-$NAME
