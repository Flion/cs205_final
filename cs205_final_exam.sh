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

# file format and awk positional parameters
# #       Name    Type 1  Type 2  Total   HP      Attack  Defense Sp. Atk Sp. Def Speed   Generation      Legendary
# $1	  $2      $3      $4      $5      $6      $7      $8      $9      $10     $11     $12             $13


#needs to run awk to begin
awk 'BEGIN{
#prints the pretty header
print "======= SUMMARY OF '$1' ======"
# declaring variables
FS="\t"
nonlegend=0;
hp=0;
defense=0}

#runs on each line of code
{
#runs on all lines except the first line defining the fields
if(NR!=1){
#checks if the line is for a nonlegendary pokemon, and executes if it is for a legendary pokemon
if($13 != "True"){
#adds this pokemon hp and def to the running total, and increments the count of nonlegendary pokemon found
hp+=$6;
defense+=$8;
nonlegend++;}
}}
# prints the formatted output for each value, then prints the end
END{print "\tTotal Non-Legendary Pokemon:",nonlegend
print "\tAvg. HP:", hp/nonlegend
print "\tAvg. Defense:", defense/nonlegend}' $1
