q=$(ls | wc -l)
n=-1
make -B README.md
function reading {
while [[ q -lt n ]] || [[ q -gt n ]]
do
	echo "Enter number of files, please!"
read n
if [[ $n -eq $q ]]
then
	echo "Congratulations, you have entered expected number!"
fi
if [[ $n -lt $q ]]
then
	echo "The number you entered is less then number of files, try again!"
fi
if [[ $n -gt $q ]]
then
	echo "The number you entered is greater then number of files, try again!"
fi
done
}

reading
