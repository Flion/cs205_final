# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
BEGIN{FS="\t"}
{
if (NR!=1){
#Counts all the hp
hp+=$7
#Counts all the defense points
def+=$5
#Counts all the lines
sum+=1
}
}
END{
#Divides hp by sum to get average
hp/=sum
#Divides def by sum to get average
def/=sum
#Prints everything out
print "\nTotal Non-Legendary Pokemon: " sum "\nAvg. HP: " hp "\nAvg. Defense: " def
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
