#!/bin/bash


# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [awk 'END{print NR}']
#    Avg. HP: [awk '{ sum += $6 } END { if (NR > 0) print sum / NR }']
#    Avg. Defense: [awk '{ sum += $8 } END { if (NR > 0) print sum / NR }']
# ======= END SUMMARY =======
