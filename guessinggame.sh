#File: guessinggame.sh

function count {
	a=$(ls -lR|grep "^-"|wc -l)
	echo "$a"
}


echo "Guess how many files are there in the current directory?"
read n
a=$(count pwd)

while [[ $n -ne $a ]]; do
	if [[ $n -gt $a ]]; then
		echo "Your guess is higher, please guess again :("
	else
		echo "Your guess is lower, please guess again :("
	fi
	read n
done

echo "Congratulations, your guess is right! ;)"