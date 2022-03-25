# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======

# begin the code
BEGIN{FS="\t"}
{
# skip the first line of categories
if (NR!=1){
# if the pokemon is not legendary according to the legendary column
 if  ($13=="False"){

# then add up how many pokemon are not legendary
 non_legendary+=1
# add up the hp for each non-legendary pokemon
 hp += $6
# add up the defense for each non-legendary pokemon
 def +=$8
}
}
}
# start printing the results
END{
# print the top title
print "======= SUMMARY OF POKEMON.DAT ======" 
# print the number of non-legendary pokemon
print "   Total Non-Legendary Pokemon: ", non_legendary

# print the average health of non-legendary pokemon
print "   Avg. HP: ", hp/non_legendary

# print the total average defense of non-legendary pokemon
print "   Avg. Defense: ", def/non_legendary

# print the ending of the table
print "======= END SUMMARY ======="}
# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
