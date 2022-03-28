# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======

BEGIN{FS="\t"}
{
    #skip the first line
    if (NR!=1)
    {
        #check for current being a non legendary
        if ($13 == "False")
        {
            #tally total non legendary
            totalNonLeg += 1

            #increment total hp
            hp += $6

            #increment total defense
            defense += $8
        }
    }
}

END{
    #get average hp of non legendary
    hp = hp / totalNonLeg

    #get average defense of non legendary
    defense = defense / totalNonLeg

    #print out beginning of summary
    print "======= SUMMARY OF POKEMON.DAT ======="

    #print out total non legendary
    print "    Total Non-Legendary Pokemon:", totalNonLeg

    #print out avg hp of non legendary
    print "    Avg. HP:", hp

    #print out avg defense of non legendary
    print "    Avg. Defense:", defense

    #print out end of summary
    print "======= END OF SUMMARY ======="
   }

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
