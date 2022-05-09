BEGIN{
FS="|"
printf"----------BOOK DETAILS-------"
printf"\nSLN\tDepartment\t\tTotalBooks"
}
{
Book[$1]+=$2
total+=$2
}
END{
for(i in Book){
SN++
printf("\n%d\t%-20s\t%d",SN,i,Book[i])
}
printf("\n----------")
printf("\nTotal Books:%d",total)
}
