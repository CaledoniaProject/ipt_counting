#!/bin/bash

i_pol=DROP
i_cnt=32

cd /run/shm/cache/security/

function chk()
{
    # filter table:
    # warn if policy of INPUT chain mismatch
    # warn if rules count mismatch
    output=$(/usr/local/bin/ipt_check filter)
    re="filter: policy ([^ ]+), ([0-9]+) rules in total"
    if [[ "$output" =~ $re ]]; then
        policy=${BASH_REMATCH[1]}
        count=${BASH_REMATCH[2]}

        if [[ "$policy" != $i_pol ]]; then
            echo -n '${color red}INPUT${color}'
        fi

        if [[ "$count" != $i_cnt ]]; then
            echo '${color red}Mismatch${color}'
        fi

    else
        echo '${color red}Unmatch${color}'
    fi
}

output=$(chk)
if [[ ! -z ${output} ]];then
    echo -n [[ $output ]] 
fi

