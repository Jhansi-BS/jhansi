if [ $# -eq 1 ]
then
if [ -d $1 ]
then
set -- `ls -Rl $1 | grep "^-" | tr -s " " | cut -d " " -f 5,9- | sort -n | tail -n 1`
echo "file size:$1"
echo "second file:$2"
else
echo "not a directory"
fi
else
echo "enter a directory"
fi
