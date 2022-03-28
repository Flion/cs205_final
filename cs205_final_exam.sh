#!/bin/sh

# Prints the string signifying start of output
echo "======= SUMMARY OF POKEMON.DAT ======"

# Fixes column formatting, sorts the file based on the # column so that every row is unique, then counts each row, and prints it
column -t pokemon.dat | sort -u -k1,1 | awk '{ if( $(14) != "True" && NR != 1 ) count++ } END{ print "Total Non-Legendary Pokemon: " count }'

# Fixes column formatting, sorts the file based on the # column so that every row is unique, then gets the sum and count for average for health and prints it
column -t pokemon.dat | sort -u -k1,1 | awk '{ if( $(14) != "True" && NR != 1 ) sum += $5; count++; } END{ avg = sum/count; print "Avg. HP: " avg }'

# Fixes column formatting, sorts the file based on the # column so that every row is unique, then gets the sum and count for average for defense and prints it
column -t pokemon.dat | sort -u -k1,1 | awk '{ if( $(14) != "True" && NR != 1 ) sum += $9; count++; } END{ avg = sum/count; print "Avg. Defense: " avg }'

# Prints the string signifying the end of output
echo "======= END SUMMARY ======="

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
