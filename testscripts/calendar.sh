#!/bin/bash

echo "Calendar selection"

date_selected=$(zenity --calendar)
echo $date_selected
subl $date_selected