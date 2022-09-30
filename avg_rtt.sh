ipfile=ips.txt
while read IP; do
	average=`ping -c 5 $IP | grep rtt | cut -d '/' -f 5`
	if [ "X$average" == "X" ]; then
		continue
	fi
	echo $average
done < $ipfile
