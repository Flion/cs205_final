# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [290251]
#    Avg. HP: [69.1723]
#    Avg. Defense: [73.7503]
# ======= END SUMMARY =======
#This is getting rid of the tabs
BEGIN{FS="\t"} 
#The sum of the colum of defense 
{sum+=$8
#The sum of the coloum of HP
sum1+=$6 
#The sum of colomn of totoal pokemon
sum3+=$1
#Used for the average
if (NR!=1)
hp+=1}
#If these are true then these statements run
END{
iThe s um of the pokemon
print sum3
print sum/NR
#The sum of HP
print sum1/NR
}
# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
