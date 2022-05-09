date=`date +%d`
date=`expr $date + 0`
l=`cal | tr -d "[\137][\010]" | grep -wn "$date" | head -c 1`
if [ $date -gt 9 ]
then
	cal | tr -d "[\137][\010]" | sed "$l s/$date/**/"
else
	cal | tr -d "[\137][\010]" | sed "$l s/$date/*/"
fi
