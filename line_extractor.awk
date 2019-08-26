# Awk Script to extract lines from a text file having a particular word and then extracting lines
# only that have a specific number greater than a threshold


# comments -helpful
# /Percentage/ -- Extracts all the lines in the text file with keyword Percentage no matter where it is.
# $3 > 75 -- Extract the lines that have values greater than 75 in the third argument.
# && -- Intersection of command 1 and command 2 and then store these results in a new text file with 
# redirection

# can run the same command in the terminal - copy and paste the below line and change the paths accordingly

sudo awk '/Percentage/ && $3 > 75' file1.txt > file2.txt

