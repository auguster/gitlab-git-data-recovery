#!/bin/bash
HASHED_FOLDER=$1
RESTORE_FOLDER=$2

ls $HASHED_FOLDER |while read folder
do
	ls $HASHED_FOLDER/$folder |while read subfolder
	do
		ls $HASHED_FOLDER/$folder/$subfolder |grep -v wiki |while read projectPath
		do
			fullpath=$(cat $HASHED_FOLDER/$folder/$subfolder/$projectPath/config |grep fullpath |cut -d"=" -f2 |xargs)
			echo "restoring $fullpath"
			mkdir -p $RESTORE_FOLDER/$fullpath
			cp -r $HASHED_FOLDER/$folder/$subfolder/$projectPath/* $RESTORE_FOLDER/$fullpath/
		done
	done
done