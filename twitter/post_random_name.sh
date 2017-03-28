#! /bin/bash

links -dump "http://random-name-generator.info/random/?n=1&g=1&st=1" > /home/dri/twitter/randomname.txt 

name=`sed -n '/Random name/{n;n;p}' /home/dri/twitter/randomname.txt | sed 's/1. //' | awk '{print $1}'`

#echo -n "Happy day "; echo -n $name; echo !

/usr/local/bin/t update "`echo -n "Happy day "; echo -n $name; echo !`"

if [ $? -eq 0 ]
 then echo -e "Subject: Random name\n\r$name \n $name" | /usr/sbin/sendmail daniel_cristea@hotmail.com
fi

