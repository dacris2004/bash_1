#! /bin/bash

links -dump https://en.wikipedia.org/wiki/Special:Random > /home/dri/twitter/wiki.txt

title=`awk '{if (NR == 6) print $0}' /home/dri/twitter/wiki.txt`

link=`sed -n '/Retrieved from/{n;p}' /home/dri/twitter/wiki.txt | sed 's/"//' | sed 's/"//'`

#echo $title
#echo $link

/usr/local/bin/t update "`echo Random wiki: $title; echo $link`"

if [ $? -eq 0 ]
 then echo -e "Subject: Random wiki\n\r$title \n $link" | /usr/sbin/sendmail daniel_cristea@hotmail.com
fi

