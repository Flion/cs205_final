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

# CS205-001
# Strathearn
# Kevin
# kbs255

BEGIN{FS="\t"}
{
if(NR!=1){
if($12 == "True"){ # if column 12 has value of True
# add 1 to legendary count
leg+=1
}else{
# add health in colum 5 to health count
hp+=$5
# add defence un column 7 to defence count
def+=$7
# add 1 to total number of lines hp and def have been added from
sum+=1
}
}
}
END{
# get averages of hp and defence by dividing total by number of lines
hp=hp/sum
def=def/sum
# print output statments with values
print "======= SUMMARY OF POKEMON.DAT ======="
print "Total Non-Legendary Pokemon: "leg
print "Avg. HP: "hp
print "Avg. Defence: "def
print "======= END SUMMARY ======="
}
