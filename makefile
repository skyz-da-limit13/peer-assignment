all: README.md

README.md:
	echo "# The Ultimate Guessing Game" > README.md
	echo ""
	echo "Make created on: $$(date)" >> README.md
	echo "" >> README.md
	echo "Lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm README.md

