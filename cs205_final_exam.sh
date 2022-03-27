# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
BEGIN{FS="\t"}
{
if ($(13) =="False"){
nonlegendaries+=1
}
defense+=$7
hp+=$6
#Counts the number of lines in the file
sum+=1
}
END{

print " ======= SUMMARY OF POKEMON.DAT ======"
print "    Total Non-Legendary Pokemon: ", nonlegendaries
print "    Avg. HP: ", hp/(sum-1)
print "    Avg. Defense: ", defense/(sum-1)
print " ======= END SUMMARY ======="}

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
