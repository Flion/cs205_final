# Section 001
# Shanley
# Jack
# jrs975

# This is for total non legendary pokemon
# check to see if the pokemon is legendary or not by the true false value in the legendary column
# if it is false then print that pokemon, if it is true it is legendary and do not print it

awk 'Begin{FS="\t"}{if (NR!=1){if($13=="False"){nonleg += $13}}END{print "Total Non-Legendary Pokemon: " , nonleg}' POKEMON.dat

# This is for average HP
# add up the fifth column and divid by total
awk 'BEGIN{FS="\t"}{if (NR!=1){avgh += $6/(nonleg)}END{print "Avg. HP: " , avgh}' POKEMON.dat

# This is for average Defense
# add up the eighth column and divide by total
awk 'BEGIN{FS="\t"}{if (NR!=1){avgd += $8/(nonleg)}END{print "Avg. Defense: " , avgd}' POKEMON.dat
