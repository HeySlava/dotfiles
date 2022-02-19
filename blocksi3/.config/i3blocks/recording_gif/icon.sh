#!/bin/bash

# ffmpeg_process=$(ps -aux | grep --color=auto ffmpeg | wc -l)

TMP_FILE="/tmp/custom_gif_tmp"

if [ -f $TMP_FILE ]
then
    answer="RECORD"
    color="#FF0000"
else
    answer=""
    color="#0000FF"
fi

echo $answer
echo $answer
echo $color
