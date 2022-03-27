# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.

# Kevin Kilbourne
# CS 205
# Final Exam Pt 2

# grab our file from user input
file=$1

# if our file is true, roll with it
if [[ -f $file ]];
then

	# grab the non-legendary pokemon in a separate transaction for better readability and producing a single error message
	# in case of things going wrong
	nonlegendary=`awk -F '\t' '/False/ {print}' $file`

	# calculate our vars of interest
	count=`echo "$nonlegendary" | awk -F '\t' 'END {print NR}'`
	avgHP=`echo "$nonlegendary" | awk -F '\t' '{ sumHP += $5 } END { if (NR > 0) print sumHP / NR}'`
	avgDF=`echo "$nonlegendary" | awk -F '\t' '{ sumDF += $7 } END { if (NR > 0) print sumDF / NR}'`

	# print everything out all pretty-like
	echo "======= SUMMARY OF POKEMON.DAT ======"
	echo "Total Non-Legendary Pokemon: $count"
	echo "Avg. HP: $avgHP"
	echo "Avg. HP: $avgDF"
	echo "======= END SUMMARY ======="

else
	# if the file doesn't exist, indicate this and exit
	echo "File $file not found"

fi
