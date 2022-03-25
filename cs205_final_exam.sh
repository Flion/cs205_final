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

#!/bin/bash

FILE=$1

if [ -f "$FILE" ];
then
  awk '
  {
    if (NR!=1){
      FS=" "
      if($14 == False)
      {
      numLegend+=1
      }
      hp+=$6
      def+=$8

      sum+=1
    }
  }
  END{
    avghp=(hp/sum)
    avgdef=(def/sum)
    print "======= SUMMARY OF POKEMON.DAT ======"
    printf "Total Non-Legendary Pokemon: %s\n", numLegend
    printf "Avg. HP: %s\n", avghp
    printf "Avg. Defense: %s\n", avgdef
    print "======= END SUMMARY ======="
  }' $FILE
else
	echo "$FILE does not exist!"
fi
