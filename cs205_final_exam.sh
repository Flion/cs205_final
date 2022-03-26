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

BEGIN{FS="\t"}
{
if (NR!=1){
#change HP to add up all the HP values

hp+=$6

#add up the amount of defense stat

defense+=$8

#counts the non legendary pokemon
if ($13 == "False"){

   count+=1
}

}
}
END{
#prints the display title
print "======= SUMMARY OF POKEMON.DAT ======"

#prints the amount of non legendary pokemon
print "   Total Non-Legendary Pokemon: " count

#prints the average HP of all pokemon
print "   Avg. HP: " hp / 801

#prints the average defense stat of the pokemon
print "   Avg. Defense: " defense / 801

# prints end
print "======= END SUMMARY ======="}

