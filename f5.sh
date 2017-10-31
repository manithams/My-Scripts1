#!/bin/bash
#DATE=`date "+%m_%d_%y"`

#Here we create the ucs archive
#tmsh save sys ucs $DATE
#echo "$DATE"

DATE=`date "+%Y%m%d"`

#echo "$DATE"

#touch /root/scripts/bigip_ltm_"$DATE"

delmonth=`date +'%m' -d '-2 month'`

echo "$delmonth"

deldate=`date +'%Y%m%d' -d '-2 month'`

echo "$deldate"

#touch /root/scripts/bigip_ltm_"$deldate"

#check_space()
#{
echo "*****************Begin Space*****************"
space=`df -h | awk '$NF == "/home" { print $5 }'`
echo $space
echo "${space//%}"

if [$space -gt 85] ; then
	echo "Not enough space"
	#rm -f /root/scripts/bigip_ltm_"$deldate"

else if [$space -lt 85] ; then
	echo "You have suffiecient space"

else 
	echo "Other issue"

fi
	
#echo "*****************Begin Space*****************"
#}
