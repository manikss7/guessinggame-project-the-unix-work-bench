README.md: guessinggame.sh
no_of_lines=$(wc -l guessinggame.sh | egrep -o "[0-9]+")
echo "Title of the Project: Guessing Game " >> README.md
echo "make was run on:" >> README.md
date >> README.md
echo "The total number of lines in guessing.sh program are: $(no_of_lines) " >> README.md
