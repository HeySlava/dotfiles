#!/bin/bash

ffmpeg_process=$(ps -aux | grep custom_gif | wc -l)

if [ $ffmpeg_process -eq 1 ]
then
    answer=""
    color="#0000FF"
else
    answer="RECORD"
    color="#FF0000"
fi

echo $answer
echo $answer
echo $color
