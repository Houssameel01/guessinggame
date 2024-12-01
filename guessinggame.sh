#!/bin/bash

# Function to count the number of files
function count_files {
  echo $(ls -1 | wc -l)
}

# Main Program
file_count=$(count_files)
echo "Guess how many files are in the current directory:"

while true; do
  read guess
  if [[ $guess -eq $file_count ]]; then
    echo "Congratulations! You guessed it right."
    break
  elif [[ $guess -lt $file_count ]]; then
    echo "Too low. Try again:"
  else
    echo "Too high. Try again:"
  fi
done
