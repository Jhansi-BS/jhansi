BEGIN{
count=0;
sent1=0;
sent2=0;
recieved=0;
}
{
if($1=="d")
{
count++;
}
else if($1=="+" && $3==1 && $4==2)
{
sent1++;
}
else if($1=="+" && $3==0 && $4==2)
{
sent2++;
}
else if($1=="r" && $3==2 && $4==3)
{
recieved++;
}
}
END{
printf"\nPacket Sent from source node 1 is:%d",sent1;
printf"\nPacket Sent from source node 2 is:%d",sent2;
printf"\nPacket Recieved:%d",recieved;sent=sent1 + sent2;
printf"\nPacket Delivery Ratio:%.2f\n",(recieved/sent)*100;
}
