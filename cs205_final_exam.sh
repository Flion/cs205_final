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

#to run as a bash script
#!/bin/sh
#so the script runs awk
awk '
#beginning the awk script and using tabs as delimiters
BEGIN {FS="\t"}
{
	#Checking to see if the pokemon is legendary or not
	if ($13 == "False"){
		#adding non-legendary pokemon hp to total sum 
		hp+=$5
		#adding non-legendary pokemon def to total sum
		def+=$7
		#keeping track of the number of non-legendary pokemon for average
		num_pokemon+=1
	}
}
END {
	#calculating avg hp
	avg_hp = hp/num_pokemon
	#calculating avg def
	avg_def = def/num_pokemon
	#formatting output
	print "======= SUMMARY OF POKEMON.DAT ======\n"
	#printing number of non-legendary pokemon
	print "    Total Non-Legendary Pokemon:", num_pokemon, "\n"
	#printing average hp
	print "    Avg. HP:", avg_hp, "\n"
	#printing avg def
	print "    Avg. Defense:", avg_def, "\n"
	#formatting output
	print "======= END SUMMARY =======\n"
} '
