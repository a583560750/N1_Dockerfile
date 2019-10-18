#!/bin/sh

if [ $CUSTOM = "1" ]; then
	while :
	do
		sleep 86400
	done
else
	$N2N_PATH/$VERSION/edge -d $DEVICE_NAME -a $N2N_IP -c $N2N_GROUP -r -b -v -f -l $SU_NODE
fi
