#!/bin/bash

#Nicehash donate: 3JKA47P98c9JGCy3GN7qXFC2FzeuJmXuph
#Zec donate: t1fP9jWyqFEni2p4i9t3byqtimsMKv1y95T
#ETH donate: 0xe835a7d5605a370e4750279b28f9ce0926061ea2

export DISPLAY=:0

DELAY=10

MIN_TEMP=65
MAX_TEMP=70

MIN_COEF=80
MAX_COEF=110

CARDS_NUM=`nvidia-smi -L | wc -l`
echo "Found ${CARDS_NUM} GPU(s), Delay ${DELAY}s"

while true
        do
            echo "$(date +"%d/%m/%y %T")"
        for ((i=0; i<$CARDS_NUM; i++))
            do
                currentFanState=$(nvidia-settings -t -q [gpu:$i]/GPUFanControlState)
                if [[ $currentFanState != 1 ]]; then
                                nvidia-settings -a [gpu:$i]/GPUFanControlState=1 > /dev/null
                                            if [ "$?" -ne 0 ]; then exit 1;
											fi
                                echo "GPUFanControlState set to 1 for GPU${i}"
                fi
                GPU_TEMP=`nvidia-smi -i $i --query-gpu=temperature.gpu --format=csv,noheader`
                if [ $GPU_TEMP -le $MIN_TEMP ]
                    then
                        FAN_SPEED=$(($GPU_TEMP * ($MIN_COEF-($MIN_TEMP - $GPU_TEMP) * 2)/100))

                elif [[ $GPU_TEMP > $MIN_TEMP ]] && [[ $GPU_TEMP < $MAX_TEMP ]]
                    then
						FAN_SPEED=$((  $GPU_TEMP *(($GPU_TEMP - $MIN_TEMP) * 4 + $MIN_COEF)/100 ))

				elif [ $GPU_TEMP -ge $MAX_TEMP ]
                    then
						FAN_SPEED=$(( $GPU_TEMP *(($GPU_TEMP - $MAX_TEMP) * 4 + $MAX_COEF)/100 ))
                fi
		#Set FAN SPEED not more 100%. Thanks WayneCollins.
		if [ $FAN_SPEED -gt 100 ]
				then
					FAN_SPEED=100
		fi
                nvidia-settings -a [fan:$i]/GPUTargetFanSpeed=$FAN_SPEED > /dev/null
                echo "GPU${i} ${GPU_TEMP}°C -> ${FAN_SPEED}%"
       done
sleep $DELAY
done
