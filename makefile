all: README.md

README.md:
	echo "# Guessing Game" > README.md
	date +"make was run on: %D %T" >> README.md
	echo "### **Number of lines in guessinggame.sh:**" >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	@echo "Cleaning up..."
	rm README.md
