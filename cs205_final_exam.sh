# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):

BEGIN{FS="\t"}
{
#Determines if the pokemon are non-legendary
if (NR!=1){
#Totals up the hp of all non-legendary pokemon
HP+=$6

#Totals up the defense of all non-legendary pokemon
DEFENSE+=$8

#Counts the number of lines in the file
sum+=1
}
}
END{
print "======= SUMMARY OF POKEMON.DAT ======="
print "     Total Non-Legendary Pokemon:", sum
print "     Avg. HP:", HP/sum
print "     Avg. Defense:", DEFENSE/sum
print "======= END SUMMARY ======="

}

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

