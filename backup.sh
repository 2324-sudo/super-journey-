#!/bin/bash

user=$(whoami)  //grabs user
path=$PWD       //grabs path

function backup { //creates backup function (method)
	tar -czvf backup.tar.gz $path  //simple tar (zip) of the path that the backup.sh file is in
}

echo "Would you like to make backup? (y/n)  " //user choice to select whether to backup at this point
read choice
echo "Choice made $choice"

if [ $choice == "y" ]; then //if user choice was y for yes then it backs up and gives notification and verbage
	backup
	echo "Backup at $path"
else                        //else it exits the program i shouldve added a while loop or until loop to make sure that if the user made a typo it would stay until they said yes (y) or no (n)
	echo "No backup was made."
fi
