#!/bin/bash

rootpath="/home/tigran/ownCloud/Smart-X PhD/Smart-X meetings/coen/"
flname="preport_tmkhoyan" 

#1: calendar date selection prompt
returndate=$(zenity --calendar --title="GenReport: date selection" --text="Select a report date from below.")
#default is current date else returnvar
datestr=${returndate:-$(date +%d-%m-%y)}; echo "selected date is: "$datestr;
# append to filename "${flname}_${datestr}"
flname+="_"$datestr
#2: ask to create  folder
path=$datestr
zenity --question --title="Generate Folder" --text="Would you like to generate folder: "${path}
#echo $?
if [ $? -ne 0 ]; then 
	option="no"
    #just open sublime file
    subl -n ${flname}
else 
	option="yes" 
	dirpath=${rootpath}${datestr}"/"
	#check if directory exhist if open the file in temp folder
	if ! mkdir "${dirpath}" 2>/dev/null; then
		 echo "Directory [${dirpath}] already exists creating a file in temp folder."; 
		 dirpath="${rootpath}temp/"
		 mkdir "${dirpath}"
	else
		echo "Directory ${dirpath} created. Opening sublime..."
	fi
	#open sublime folder and open the file with appended dir 
	subl -n "${dirpath}" && subl "${dirpath}${flname}"
fi
echo $option
# subl -n $date_selected


# path=$(date +%d-%m-%y)
# echo $path
# #2: ask to create  folder
# zenity --question --title="Generate Folder" --text="Would you like to generate folder: "${path}
# #echo $?
# if [ $? -ne 0 ]; then 
# option="no"
# else 
# 	option="yes" 
# fi

#3: call sublime