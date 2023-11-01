#!/bin/bash
# Function to run SQL scripts
runSQL() {
    set -ex
    isGetCount=true
    ls -la
    #local result=$?
    if [ "$isGetCount" == "true" ]; then
        echo "$?"
    else
        if [ "$?" -eq 0 ]; then
            echo "Success"
        else
            echo "Failed"
        fi
    fi
}

count=`runSQL $db_update_verify_sql_path true`
echo $count
count=`echo ${count} | sed 's/ //g'`
echo $count
if [ ${count} == '0' ]; then
  echo "Hello Count 0"
  local isSuccess
fi  
