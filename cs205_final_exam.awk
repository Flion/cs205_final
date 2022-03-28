# Final Exam Part 2
# Bednarz
# Krystian
# klb672
BEGIN{FS="\t"}
{
if (NR!=1){
# Add value at 6th column (HP) at current line to total_hp
total_hp+=$6
# Add value at 8th column (Defense) at current line to total_defense
total_defense+=$8
# Increment sum counter if value at 13th column (Legendary) is equal to false
if ($13=="False"){
sum+=1
}
}
}
END{
print "======= SUMMARY OF POKEMON.DAT ======"
# Print number of non legendaries
printf "Total Non-Legendary Pokemon: "
print sum
# Calculate averages
avg_hp=total_hp/sum
avg_defense=total_defense/sum
# Print calculated averages
printf "Avg. HP: "
print avg_hp
printf "Avg. Defense: "
print avg_defense
print "======= END SUMMARY ======="}
