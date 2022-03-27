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

#This line outputs the first line of the summary
echo "======= SUMMARY OF POKEMON.DAT ======"
#This line creates variable L which is used to count how many non-legendary pokemon there are. We focus on column 13 which states if the pokemon is legendary with true or false. We want the value to be false as that means the pokemon is not legendary. We use wc -l to print our results in a number.
L=$(cat pokemon.dat | cut -d, -f 13 | grep False | wc -l)
#This assigns variable L to the VALUE representing the number of non-legendary pokemon.
echo "   Total Non-Legendary Pokemon: $L"
#This line creates variable H which represents the average HP. We add columns 6 and 8 so we can look at HP and Defense. With this awk comman, we focus on column 6 and it counts the lines of column six and averages the values for us.
H=$(cat pokemon.dat | cut -d, -f 6,8,13 | grep False | wc -l | awk '{total += $6; count++ } END { print total/count }' pokemon.dat)
#This line assigns variable H to the VALUE representing average HP
echo "   Avg. HP: $H"
#This line creates variable D, which represents the average Defense. We use the same awk command, but with $8 to focus on the eighth column where defense is listed.
D=$(cat pokemon.dat | cut -d, -f 6,8,13 | grep False | wc -l | awk '{total += $8; count++ } END { print total/count }' pokemon.dat)
#This line assigns D to the VALUE that represents average Defense.
echo "   Avg. Defense: $D"
#This line outputs the last line of the summary.
echo "======= END SUMMARY ======="
