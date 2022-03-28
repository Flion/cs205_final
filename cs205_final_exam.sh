# Alexander Frenette
# CS205 001


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

# for all of the three lines below I am checking to make sure that we are not
# looking at a legendary pokemon. from there I then take the information I am
# interested in, the total numer seen, then the sum of all their hp, then the
# sum of all their defense. I then go ahead and return the value from a
# sub-shell. I do go ahead and make sure to use the first input arg as the arg
# for awk as well.
count=$(awk 'BEGIN {FS="\t"} {if(if(NR != 1 && $13 == "False") count++} END {print count}' $1)
hp=$(awk 'BEGIN {FS="\t"} {if(NR != 1 && $13 == "False") hp+=$5} END {print hp}' $1)
def=$(awk 'BEGIN {FS="\t"} {if(NR != 1 && $13 == "False") def+=$7} END {print def}' $1)

# display formatted data
echo "======= SUMMARY OF POKEMON.DAT ======"
echo "Total Non-Legendary Pokemon: $count"
echo "Avg. HP: $((hp/count))"
echo "Avg. Defense: $((def/count))"
echo "======= END SUMMARY ======="