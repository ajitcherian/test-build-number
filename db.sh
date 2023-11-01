#!/bin/bash
# Function to run SQL scripts
runSQL() {
    set -ex
    isGetCount=true
    ls -la
    local result=$?
    if [ "$result" -eq 0 ]; then
      echo "Success"
      echo "t***REMOVED***s is $result"
      return $result
    else
      echo "Failed"
    fi
}

count=$(runSQL $db_update_verify_sql_path true)
echo "Exit code: $count"
count=$(echo ${count} | sed 's/ //g')
echo "Modified exit code: $count"
if [ $count -eq 0 ]; then
  echo "Hello Count 0"
fi
