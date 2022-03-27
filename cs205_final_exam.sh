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

#We need to grab the amount of True values in collumn 13
#We need to add the health of all the pokemon that are legendary
# we need to add the defense of all the pokemon that are legendary

#Grab the FIle in as a positional argument
FILE="$1"
#Define variables
legendTotal=0
HpTotal=0
defTotal=
#print the file
echo $FILE
#if file exists
if test -e $FILE
	#count the number of legendaries
	awk -F '\t' '{print $13}' 
	# count the number of HP
	#count the number of Def
	# print out the summary info
fi
