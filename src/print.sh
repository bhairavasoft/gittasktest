# TASK: Create a line plot with x values ranging from 0 to 10 and y values as the square of x.
# Customize the plot by adding a title, labels for both axes, and a grid. 

#!/bin/bash

# Check if the required commands are available
command -v echo >/dev/null 2>&1 || { echo "Error: 'echo' command not found."; exit 1; }
command -v expr >/dev/null 2>&1 || { echo "Error: 'expr' command not found."; exit 1; }
# Initialize the counter
i=1
# Loop to print numbers 1 to 99
while [ $i -le 99 ]; do
    # Check if $i is a valid number
    if ! [[ $i =~ ^[0-9]+$ ]]; then
        echo "Error: Unexpected value for 'i': $i"
        exit 1
    fi

    echo $i

    # Increment the counter
    i=$(($i + 1))

    # Check if increment operation was successful
    if [ $? -ne 0 ]; then
        echo "Error: Failed to increment the value of 'i'."
        exit 1
    fi
done
echo "Script executed successfully!!!!!!"