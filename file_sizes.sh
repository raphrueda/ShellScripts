#!/bin/bash

#Program to categorise files into small, medium and large

sml=`wc -l * | sed s/total// | sort -g | egrep " [0-9] " | awk '{print $2}' | sort`
med=`wc -l * | sed s/total// | sort -g | egrep " [0-9][0-9] " | awk '{print $2}' | sort`
lrg=`wc -l * | sed s/total// | sort -g | egrep " [0-9]{3}[0-9]* " | awk '{print $2}' | sort`

echo Small files: $sml
echo Medium-sized files: $med
echo Large files: $lrg
