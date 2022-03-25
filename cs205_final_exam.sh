#!/bin/bash
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
awk -f pokemon.dat
awk BEGIN{FS="\t"}
{
#check if legendary bool is false
#if ($13 != 0) {
#get the total hp of none legendaries
hp+=$6
#get the total defense
df+=$8
#count number of lines for each pass
sum+=1
# get the mean of hp total
awk meanhp = hp/sum
#get the mean of defense
awk meandf = df/sum
#}
}
awk END{
# print the stats
print " ======= SUMMARY OF POKEMON.DAT ======"
print "    Total Non-Lengendary Pokemon: " sum
print "    Avg. HP: " meanhp
print "    Avg. Defense: " meandf
print " ======= END SUMMARY ======="
}
