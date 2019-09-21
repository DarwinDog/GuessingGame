all: README.md


README.md: Guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "## A game to guess the number of files in a folder" >> README.md
	echo "" >> README.md
	echo "Please download to a folder on your computer, type "make" and hit enter" >> README.md
	echo "This will make the necessary files for the game" >> README.md
	echo "To run the game, please enter" >> README.md 
	echo "" >> README.md
	echo "    bash Guessinggame.sh" >> README.md
	echo "" >> README.md
	echo "The game will terminate when you guess the correct number of files in the folder" >> README.md
	echo "" >> README.md
	echo "The number of lines in the Guessinggame.sh file are:" >> README.md
	wc -l < ./Guessinggame.sh >> README.md
	echo "" >> README.md
	echo "The makefile ran on" >> README.md
	(date '+%d/%m/%Y %H:%M:%S') >> README.md
	echo "" >> README.md
	echo "The project is available on [my GitHub](https://github.com/DarwinDog/GuessingGame). I have also added a [GitHub pages site](https://darwindog.github.io/GuessingGame/)" >> README.md

clean:
#	rm Guessinggame.sh
	rm README.md
