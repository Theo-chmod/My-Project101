README.md: guessinggame.sh
	echo '## Title: My-Project101' > README.md
	echo -n '1. Number of lines: ' >> README.md ; cat guessinggame.sh |  wc -l >> README.md
	echo -n '2. make executed on ' >> README.md ; date +%d/%m/%y\ %T >> README.md








