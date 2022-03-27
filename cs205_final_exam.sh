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
FILE=$@
total=0
avg_hp=0
avg_def=0

if [ -f $FILE ]
then
	while read -r cur_line
	do
	if [ $3 != "Legendary" ]
		total=$(( $total +1 ))
		avg_hp=$(( $avg_hp + $5 ))
		avg_def=$(( $avg_def +$7 ))
	fi
		echo $cur_line
	done

	echo "Total Non-Legendary Pokemon: " $total
	echo "Avg. HP: " $avg_hp
	echo "Avg. Defense: " $avg_def
fi
