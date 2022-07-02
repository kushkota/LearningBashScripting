#!/usr/bin/env bash

# Variables

minimumVolume=1496
minimumCharge=18.84
additionalCharge=3.90

echo -e "How many gallons of water \ndid you use this month?"

read input

calculateWaterBill() {
    if [[ $input -gt $minimumVolume ]];
        then
            additionalWater=$(echo "${input} - ${minimumVolume}" | bc)
            
            # 748 gallon = 1 CCF
            # 1 gallon = 1/748 CCF
            # charge extra $3.90 per additional CCF
                      
            additionalBill=$(echo "${additionalWater} * ${additionalCharge} / 748" | bc -l)
            amountOwed=$(echo "${additionalBill} + ${minimumCharge}" | bc)
            
            # format and print data
            # %f - floating point(float, double)
            printf "%.2f\n" ${amountOwed} 
            
            # printf() placeholders
            # echo $amountOwed | awk '{printf("%.2f\n", $1)}' 
        else
            echo ${minimumCharge}
    fi
}


echo -n "Your water bill is $"
calculateWaterBill
