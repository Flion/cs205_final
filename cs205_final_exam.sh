# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#
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


awk -v var="$1"
#assigning the positional parameter to awk
awk 'BEGIN {print " ======= SUMMARY OF POKEMON.DAT ======"}'
awk 'BEGIN {FS="\t"} { if (NR!= 1 && $13=="False"){sum+=1}}END{print "    Total Non-Legendary Pokemon: "sum}' $1
#calculating the number of nonlegendary pokmeon, 13th row
awk 'BEGIN {FS="\t"} { if (NR!= 1 && $13=="False"){health += $6}{sum+=1}}END{print "    Avg. HP: "health/sum}' $1
#calculating the average HP which is in 6th row
awk 'BEGIN {FS="\t"} { if (NR!= 1 && $13=="False"){def += $8}{sum+=1}}END{print "    Avg. Defense: "def/sum}' $1
#calculating the average defense which is in 8th row
awk 'BEGIN {print " ======= END SUMMARY ======="}'
