secret_names=$(gh secret list -e prod | awk '{print $1}')  # Extract secret names from table format
echo $secret_names
if [[ "$secret_names" =~ "ENCRYPTION_KEY" ]]; then  # Check if MY_SECRET exists in the list
  echo "Secret exists, deleting..."
  gh secret delete ENCRYPTION_KEY -e prod
  if [ $? -eq 0 ]; then
    echo "Secret deleted successfully."
  else
    echo "Failed to delete secret."
  fi
else
  echo "Secret does not exist."
fi
