#!/bin/bash
# Function to run SQL scripts
runSQL() {
    set -ex
    isGetCount=true
    echo "hello"
    #local result=$?
    if [ "$isGetCount" == "true" ]; then
        echo "$result"
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
if [ ${count} == '0' ]; then
  echo "Hello Count 0"
  local isSuccess
fi  
