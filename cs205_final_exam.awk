# Dylan Woolley
# CS205 001

# I put this script in it's own file for better readability
BEGIN{FS="\t"
   hp=0
   defense=0
   sumNonlegendary=0}
{
   # If we are not on the first line containing headers and the last column (12th column) is not true (meaning it is a non-legendary pokemon)
   if (NR!=1 && $13=="False")
   {
      # add the hp of the non-legendary pokemon to the hp counter
      hp+=$5
      
      # add the defense of the non-legendary pokemon to the defense counter
      defense+=$7

      #Counts the number of non-legendary pokemon in the file
      sumNonlegendary+=1
   }
}
END{
   # Prints the summary of the file given
   # Must follow the format that was given in the top of the file
   print " ======= SUMMARY OF POKEMON.DAT ====== "
   printf "    Total Non-Legendary Pokemon: "
   print sumNonlegendary
   printf "    Avg. HP: "
   print hp/sumNonlegendary
   printf "    Avg. Defense: "
   print defense/sumNonlegendary
   print " ======= END SUMMARY ======= "
}