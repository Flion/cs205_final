
awk -v filename=$1 '
BEGIN {
	FS="\t"
}
{
	if (NR!=1) {
		count = count + 1
		hpcount = hpcount + $6
		attacktotal = attacktotal + $7
	}
}
END {
	printf "======= SUMMARY OF %s =======\n", filename
	printf "   Total Pokemon: %d\n", count
	printf "   Avg. HP: %d\n", hpcount/count
	printf "   Avg. Attack: %d\n", attacktotal/count
	print "======= END SUMMARY =======\n"
}

' $1

