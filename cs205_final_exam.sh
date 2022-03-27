#! /bin/awk -f
# explanation: the line above signals this is an awk script

# explanation: FS signifies the field separator character
BEGIN{FS="\t"}
{
# explanation: skip the first line of the file since it contains the names of each column and not values
if (NR!=1) {
# explanation: if the value at the 13th column is False, it is not a legendary Pokemon
if ($13=="False") {
# explanation: add to the counter for total number of non-legendary Pokemon
tnlp+=1
# explanation: add to the hp counter
hp+=$6
# explanation: add to the defense counter
def+=$8
}
}
}
# explanation: END block to be triggered once script has finished looping through file
END{
# explanation: print expected output as seen in instructions
print "======= SUMMARY OF POKEMON.DAT ======"
# explanation: print expected output as seen in instructions with total number of non-legendary Pokemon
print "   Total Non-Legendary Pokemon: " tnlp
# explanation: print expected output as seen in instructions with average number of HP for non-legendary Pokemon
print "   Avg. HP: " hp/tnlp
# explanation: print expected output as seen in instructions with average number of defense for non-legendary Pokemon
print "   Avg. Defense: " def/tnlp
# explanation: print expected output as seen in instructions
print "======= END SUMMARY ======="
}

# ---

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
