all: Guessinggame.sh README.md

Guessinggame.sh:
	echo "linje 1" > Guessinggame.sh
	echo "linje 2" >> Guessinggame.sh

README.md: Guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "## A game to guess the number of files in a folder" >> README.md
	echo "" >> README.md
	echo "Please download to a folder on your computer, type "make" and hit enter" >> README.md
	echo "This will make the necessary files for the game" >> README.md
	echo "To run the game, please enter" >> README.md 
	echo "'''" >> README.md
	echo "foldername$ bash Guessinggame.sh" >> README.md
	echo "'''" >> README.md
	echo "" >> README.md
	echo "The game will terminate when you gues the currect number of files in the folder" >> README.md
	echo "" >> README.md
	echo "The number of lines in the Guessinggame.sh file are:" >> README.md
	ls | wc -l >> README.md
	echo "" >> README.md
	echo "The makefile ran on" >> README.md
	(date '+%d/%m/%Y %H:%M:%S') >> README.md

clean:
	rm Guessinggame.sh
	rm README.md
