README.md: guessinggame.sh
	touch README.md
	echo "# Title: GUESSINGGAME  " >> README.md
	echo "Current time: $(shell date '+%T %A, %B %d, %Y.')  "  >> README.md
	echo "Number of lines in guessinggame.sh is : $(shell wc -l < guessinggame.sh)" >> README.md

clean:
	rm README.md
