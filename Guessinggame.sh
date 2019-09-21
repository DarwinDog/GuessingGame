no_of_files=$(ls | wc -l)
no_guessed=0

function evaluate_input {
	if [[ $1 -eq $no_of_files ]]
	then
		echo "Fantastic! You correctly guessed that the folder contains $1 files."
	elif [[ $1 -lt $no_of_files ]]
	then
		echo "Sorry. $1 is to low. Try a higher number"
	elif [[ $1 -gt $no_of_files ]]
	then
		echo "Sorry $1 is to high. Try a lower number"
	fi
}


while [[ $no_guessed -ne $no_of_files ]]
do
	echo "Guess how many files there is in this folder:"
	read no_guessed
	evaluate_input $no_guessed
done
