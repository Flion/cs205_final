# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======



awkcommand='
BEGIN{FS="\t"}
{
#count the number of pokemon not including the very top
if (NR!=1){

#if column 12 is not a legendary
if ($12!="True"){

#sum the pokemon
numOfPokemon+=1

#sum the hp
hp+=$5

#sum up the defense
def+=$7
}
}
}
END{
#print results
print("======= SUMMARY OF POKEMON.DAT ======")
print("Total Non-Legendary Pokemon:", numOfPokemon)
print("Avg. HP:", hp/numOfPokemon)
print("Avg. Defense:", def/numOfPokemon)
print("======= END SUMMARY =======")}
'

#awk command
awk "$awkcommand" ./pokemon.dat


# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.
