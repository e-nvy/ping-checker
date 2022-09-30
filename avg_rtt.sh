ipfile=ips.txt
while read IP; do
	average=`ping -nq -w 1 -i 0.2 -c 100 $IP | grep rtt | cut -d '/' -f 5`
	if [ "X$average" == "X" ]; then
		continue
	fi
	echo $average
done < $ipfile
