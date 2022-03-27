# Tell computer that this is an awk file
#! /bin/awk -f

# Start the looping through the file and say what the file is seperated by
BEGIN{FS="\t"}
{
# Skip over the first line in file
if (NR!=1) {
# Remove legendary pokemon
if ($13=="False") { 
# Count total pokemon
total_pokemon += 1
# Count total hp
total_hp += $5
# Count total defense
total_defense += $7
}}}
# End block happens after the script is finished looping
END{
# Print the summary results
print "======= SUMMARY OF POKEMON.DAT ======"
# Print the total pokemon
print "   Total Non-Legendary Pokemon: $total_pokemon"
# Print the average hp
print "   Avg. HP: $total_hp/$total_pokemon"
# Print the average Defense
print "   Avg. Defense: $total_defense/$total_pokemon"
# Print end line
print "======= END SUMMARY ======="
} 
