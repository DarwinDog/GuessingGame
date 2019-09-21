all: Guessinggame.sh README.md

Guessinggame.sh:
	echo "linje 1" > Guessinggame.sh
	echo "linje 2" >> Guessinggame.sh

README.md: Guessinggame.sh
	echo "**Dette er en heading**" > README.md
	echo "The number of lines in the Guessinggame.sh file are:" >> README.md
	wc -l Guessinggame.sh | awk '{ print $1 }' >> README.md
	(date '+%d/%m/%Y %H:%M:%S') >> README.md

clean:
	rm Guessinggame.sh
	rm README.md
