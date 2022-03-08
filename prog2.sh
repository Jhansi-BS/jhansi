echo "enter the first file name:"
read file1
if [ -e $file ]
then
set -- `ls -ld $file1`
file1perm=$1
else
echo " file doesnot exit "
exit
fi
echo "enter second file name:"
read file2
if [ -e $file2 ]
then
set -- `ls -ld $file2`
file2perm=$1
else
echo " file does not exit "
exit
fi
if [ $file1perm = $file2perm ]
then
echo "file permission are identical"
echo " permission is $file1perm"
else
echo " file permission are not identical "
echo "$file1 permission is $file1perm "
echo "$file2 permission is $file2perm"
fi

