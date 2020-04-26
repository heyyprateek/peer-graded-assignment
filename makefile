PROJECT_TITLE?="Guessing Game: How many files have you got in there?"
create_readme:
	rm -f README.md
	touch README.md
	echo $(PROJECT_TITLE) >> README.md
	date >> README.md
	wc -l guessinggame.sh >> README.md