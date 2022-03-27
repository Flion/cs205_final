#!/bin/bash

# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):

#this is finding the number of values in the HP column
avg_hp=awk '{print $8}' pokemon.dat | sort | uniq | wc -l
#This is dividing the the the total of hp by the number of values
avg_hp= avg_hp/awk '{Total=Total+$8}' END{print Total}' pokemon.dat
#this is finding the number of values in the defense column 
avg_def=awk '{print $10}' pokemon.dat| sort | umiq | wc -l
#This is dividing the the the total of defense by the number of values
avg_def=avg_def/awk '{Total=Total+$10}' END{print Total}' pokemon.dat
#couht variable to kepp track of total values
count=0
#for loop to check column of legendaries
for awk '{print $15}' pokemon.dat
do
#if statement to make sure the the pokemon are not legendary
	if awk '{print $15}' pokemon.dat | sort | uniq | wc -l == "False":
	#increase count for every non legendary pokemon
	count+=1
        fi
done
#set the total non legendary count to count found in loop above
tot_non_leg=count



# ======= SUMMARY OF POKEMON.DAT ======
#print out required statement with total count of non legendary pokemon
echo Total Non-Legendary Pokemon: tot_non_leg
#print out required statement with  avg_hp
echo Avg. HP: avg_hp
#print out required statement with avg defense
echo Avg. Defense: avg_def
# ======= END SUMMARY =======

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
