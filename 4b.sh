if [ $# -eq 3 ]
then
if [ -f $1 ]
then
l =` cat $1 | wc -l`
if [ $2 -gt $3 -a $2 -gt $1 a $3 -gt $2 ]
then
head -n $1 $3 | tail -n +$2
else
echo "enter valid argument"
fi
else
echo "file doesnt exist"
fi
else
echo "entre the nunber of argument"
fi
