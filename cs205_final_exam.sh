# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):

average_hp="$(awk 'NR > 1 { total += $6 } END { print total/NR - 1 }' pokemon.dat)"
average_defense="$(awk 'NR > 1 { total_2 += $8 } END { print total_2/NR - 1 }' pokemon.dat)"
echo "======= SUMMARY OF POKEMON.DAT ======"
echo "    Total Non-Legendary Pokemon: "
echo "    Avg. HP: ${average_hp}"
echo "    Avg. Defense: ${average_defense}"
echo " ======= END SUMMARY ======="

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
