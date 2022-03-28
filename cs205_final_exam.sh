#!/bin/bash

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



# Print Header using passed file path
echo '======= SUMMARY '$1' ======'
# Start Awk statement
awk '
# Split the file by tabs
BEGIN{FS="\t"}
{
	# Exclude the header
	if (NR!=1){
		# Check that this pokemon is not legendary
		if ($13 == "False"){
			# Sum up the HP
			hp += $6
			# Sum up the Defense
			def += $8
			# Sum of non-lengendary
			sum+=1
		}
	}
}

# Print out all of the totals
END{
	print "Total Non-Legendary Pokemon: " sum
	print "Avg. HP: " hp/sum
	print "Avg. Defense: " def/sum
};
' $1 # Use passed file path
echo '======= END SUMMARY ======='
