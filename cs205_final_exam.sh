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

# read in file as argument
FILE=$1

 echo "======= SUMMARY OF POKEMON.DAT ======"

# FIRST LINE
awk 'BEGIN{FS="\t"}
{
if (NR!=1){

if ($13 == "False"){
	#Counts the number of lines in the file
sum+=1
}

}
}
END{
# Prints the number of lines in the file
print "Total Non-Legendary Pokemon: "sum}' $FILE



# SECOND LINE
awk 'BEGIN{FS="\t"}
{
if (NR!=1){
#TODO change HP to add up the number of HP on the Pokemon listed
hp+=$6

#Counts the number of lines in the file
sum+=1
}
}
END{
# Prints the number of lines in the file
print "Avg. HP: "hp/NR}' $FILE


# THIRD LINE
awk 'BEGIN{FS="\t"}
{
if (NR!=1){
#TODO change HP to add up the number of def on the Pokemon listed
def+=$8

#Counts the number of lines in the file
sum+=1
}
}
END{
# Prints the number of lines in the file
print "Avg. Defense: " def/NR}' $FILE




 echo "======= END SUMMARY ======="
