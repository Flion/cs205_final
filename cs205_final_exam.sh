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
BEGIN{FS="\t"}
{
if (NR!=1){
#
#check if pokemon is not a legendary
if($(12) != "True") {
# add the hp and defense to accumulators, count each non legend
hp+=$5
defense+=$7
sum+=1

}

}
}
END{
hp/=sum
defense/=sum
#average out the hp and defense values
# Prints the number of lines in the file
print"======= SUMMARY OF " FILENAME  " ======"
print"   Total Non-Legendary Pokemon: " sum
print"   Avg. HP: "hp
print"   Avg. Defense: "defense
print"======= END SUMMARY ======="
}
