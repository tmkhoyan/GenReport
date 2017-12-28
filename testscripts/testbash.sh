#!/bin/bash

# dirpath="/home/tigran/ownCloud"
# name="preport_tmkhoyan"
# datestr=$(date +%d-%m-%y)
# name+=_$datestr
# dirpath+=/$datestr

# echo $name
# echo $dirpath

# z=$(mkdir bla1)
# echo $?

# your_directory="bla3"

# #or if [ $? -ne 0 ] ; then
# if ! mkdir $your_directory 2>/dev/null; then
# 	echo "Directory exists creating a file with current date."
# 	mkdir $(date +%d-%m-%y) 
# else
#     echo "Directory ${your_directory} created"
#     exit
# fi

zenity --question --title="kjhwdkjwdh" --text="wlkejdwl"
#echo $?
if [ $? -ne 0 ]; then 
option="no"
else 
	option="yes" 
fi
echo $option

#assign value 
#VAr=2; z=${VAr:-10}; echo $z
