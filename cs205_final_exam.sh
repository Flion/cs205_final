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

#! /usr/bin/awk -f
BEGIN{FS="\t"; hp = 0; sum = 0; defense = 0}
{
if (NR!=1 && $13 == "False")
{
#$6 is the 6th column which is the HP column $8 is defense
hp += $6
defense += $8

#Counts the number of legends in the file
sum+=1
}
}
END{
# prints the average hp with simple maths
print "=====SUMMARY OF POKEMON.DAT=====\n"
printf( "Total Non-Legendary Pokemon: %d\n", sum)
printf("Avg HP: %d\n", hp/sum)
printf("Avg Defense: %d\n", defense/sum)
print "=====END SUMMARY=====\n"
}
