# CS205 - 001
# Mack
# Brandon
# bjm462
BEGIN{FS="\t"}
{
if (NR!=1){
#check if legendary
if ($13 == "False"){
#TODO change HP to add up the number of HP on the Pokemon listed
addHP = $6
hp= addHP + hp
addDF = $8
df= addDF + df

#Counts the number of pokemon used in the file
sum+=1
}
}
avg = hp / sum
def = df / sum
}
END{
# Prints the avg hp
print "   Total Non-Legendary Pokemon: " sum"\n   Avg. HP: "avg"\n   Avg. Defense: "def}
