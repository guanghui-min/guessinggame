all: README.md

README.md: guessinggame.sh file1.txt file2.txt
	echo "# Guess how many files under current directory \n" > README.md
	echo "### Last Make \n" >> README.md
	date >> README.md
	echo "\n ###Lines of Codes: \n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

file1.txt:
	echo "nothing in file1.txt"

file2.txt:
	echo "nothing in file2.txt"

clean:
	rm README.md
