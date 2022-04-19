echo "enter the password"
read p1
echo "confirm the password"
stty -echo
read p2
stty echo
while [ "$p1" != "$p2" ]
do
echo "password doesn't match. reenter the password"
read p2
done
echo "Terminal Lock"
echo "enter password to unlock"
stty -echo
read p3
stty echo
while [ "$p1" != "$p3" ]
do
clear
echo "----Terminal locked----"
echo "password doesn't match. reenter the password"
stty -echo
read p3
stty echo
done
echo "----Terminal unlock-----"
