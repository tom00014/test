#!/bin/sh
function MonthCalculate { 
    #yearmonth=$(date +%Y%m)
    yearmonth="201811"
    year=$(echo ${yearmonth}|cut -c1-4)
    month=$(echo ${yearmonth}|cut -c5-6)
    month=$((${month}-$1))
    if [ ${month} -lt 10 -a ${month} -gt 0 ];then
        month="0${month}"
    fi
    num=0
    while [ ${month} -lt 1 ]
    do
        month=$((month+12))
        if [ ${month} -lt 10 -a ${month} -gt 0 ];then
        month="0${month}"
        fi
        num=$((num+1)) 
    done
    year=$((year-num))
    ExcuteDateFmt="${year}-${month}"
    ExcuteDate="${year}${month}"
}

MonthCalculate $1

echo ${ExcuteDateFmt}
echo ${ExcuteDate}
