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

awk -f $1
#begin awk script and look for tabs
'BEGIN{FS="\t"}
{
# if not a legendary
if($13!="true"){
# add to hp total
hp+=$6

# add to defense total
defense+=$8

# add to total number of non legendaries
sum+=1
} # end of non legendary check
} # end of file
# do at end of file
END
{

# avg hp
hp/=sum

# avg defense
defense/=sum

# print formatted header and sum
printf "======= SUMMARY OF POKEMON.DAT ======\nTotal Non-Legendary Pokemon: %d", sum

# print formatted hp avg
printf "Avg. HP: %f", hp

# print formatted defense avg
printf "Avg. Defense: %f", defense

# print end
print "======= END SUMMARY ======="
}' # end of awk script
