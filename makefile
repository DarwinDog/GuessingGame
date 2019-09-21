all: Guessinggame.sh readme.txt

Guessinggame.sh:
	echo "linje 1" > Guessinggame.sh
	echo "linje 2" >> Guessinggame.sh

readme.txt: Guessinggame.sh
	echo "The number of lines in the Guessinggame.sh file are:" > readme.txt
	wc -l Guessinggame.sh | awk '{ print $1 }' >> readme.txt 

clean:
	rm Guessinggame.sh
	rm readme.txt
