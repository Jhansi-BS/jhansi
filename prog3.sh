if [ -e $1 ]
then
set -- `ls -l $1`
echo " permission are $1 "
echo " file link count: $2 "
echo " current user: $3 "
echo " current group: $4 "
echo " file size: $5 "
echo " modification is done on $6 $7 at $8 "
echo " file name: $9 "
else 
echo " file not exits "
fi
