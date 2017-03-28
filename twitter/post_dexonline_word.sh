#! /bin/bash

links -dump "https://dexonline.ro/cuvantul-zilei/`date +%Y/%m/%d`" > /home/dri/twitter/dailydexonlineword.txt 

word=`sed -n '/feed to email/{n;n;p}' /home/dri/twitter/dailydexonlineword.txt; echo ...`
adresa="https://dexonline.ro/cuvantul-zilei/`date +%Y/%m/%d`"

#echo $word
#echo $adresa


/usr/local/bin/t update "`echo Cuvantul zilei; echo $word; echo $adresa`"

if [ $? -eq 0 ]
 then echo -e "Subject: Cuvantul zilei\n\r$word \n $adresa" | /usr/sbin/sendmail daniel_cristea@hotmail.com
fi

