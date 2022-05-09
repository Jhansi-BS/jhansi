for fn in $*
 do
  if [ $fn=$1 ]
  then 
    continue
  fi
for w in `cat $1`
do
lc=`grep -owi "$w" $fn | wc -l`
echo "$w is $lc times in $fn"
done 
done
