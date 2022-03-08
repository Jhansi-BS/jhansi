for i in $*
do
echo "-------$i contents are-------"
if [ -e $i ]
then
cat $i | tr "[a-z]" "[A-z]"
echo "............"
else
echo "$i file does not exits"
fi
done
