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

# Beginning Title
echo '======= SUMMARY OF POKEMON.DAT ======'
# Checks if pokemon is not legendary and prints total
awk '{ if ($13 == "False") total = $1} END {print "    Total Non-Legendary Pokemon: " total}' pokemon.dat
# Grabs HP from the sixth column, divides by current count and prints
awk '{HP += $6} END {print "    Avg. HP: " HP/NR}' pokemon.dat
# Grabs Defense from the seventh column, divides by current count and prints
awk '{DEF += $8} END {print "    Avg. Defense: " DEF/NR}' pokemon.dat
# Ending Title
echo '======= END SUMMARY ======='
