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
#!/usr/bin/bash
echo "======= SUMMARY OF POKEMON.DAT ======";

# using awk to count total non-legendary pokemon, average HP, and average defen# defense all in one loop
awk 'BEGIN{nonLeg=0;totalHP=0;totalDef=0;}
{if ($12 == "False") nonLeg+=1; totalHP+=$5; totalDef+=$7;}
END {printf("Total Non-Legendary Pokemon: %d\n",nonLeg);
printf("Avg. HP: %d\n", totalHP/nonLeg);
printf("Avg. Defense: %d\n", totalDef/nonLeg);}' $1

echo "====== END SUMMARY ======";


