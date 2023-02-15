all: README.md

README.md:
	echo "# Guessing Game" > README.md
	echo " "
	date +"make was run on: %D %T" >> README.md
	echo "**Number of lines in guessinggame.sh:**" >> README.md
	wc -l guessinggame.sh | cut -c1 >> README.md

clean:
	@echo "Cleaning up..."
	rm README.md
