#!/bin/bash
# Function to run SQL scripts
runSQL() {
    set -ex
    isGetCount=true
    output=`echo "hello"`
    local result=$?
    echo $output
    #>/dev/null 2>&
}

count=$(runSQL $db_update_verify_sql_path true)
echo $?
echo "this is return value $count"
#$count=$?
#echo "Exit code: $count"
#count=$(echo ${count} | sed 's/ //g')
#echo "Modified exit code: $count"
#if [ $count -eq 0 ]; then
#  echo "Hello Count 0"
#fi
