#!/bin/bash

backup_filename="backup_$(date +%F).$(date +%R)"


if [ -e $backup_filename ]; then
  echo "File $backup_filename already exists!" #Вывод например в лог
else
  timedatectl > $backup_filename
fi

find . -type f -name 'backup*.*' -mtime +7 -exec rm {} \;
