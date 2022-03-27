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

#!/bin/bash

# Set file name variable
file=$1

# Output file text
# Execute AWK using file name as a variable
cat $file | awk -v file=$file '

# Declare variables
BEGIN{
	# Set initial counters to 0
	pokemonCount = 0
	totalHP = 0
	totalDefense = 0
}

# Execute for each line of data
{
	# Ignore header and legendaries
	if (NR != 1 && $13 != "True") {

		# Increment counter
		pokemonCount++

		# Increment HP and defense totals
		totalHP += $6
		totalDefense += $8
	}
}

# Print data
END {
	# Print header
	print "======= SUMMARY OF " toupper(file) " ======="
	
	# Print number of pokemon	
	print "Total Non-Legendary Pokemon: " pokemonCount

	# Print average HP
	print "Avg. HP: " totalHP / pokemonCount

	# Print average defense
	print "Avg. Defense: " totalDefense / pokemonCount

	# Print footer
	print "======= END SUMMARY ======="
}
'
