# this program tests if a value is prime

echo -n "enter a value:"

read num # reads a value

i=2 # divisor value

cont=0 # count the number of perfect divisions

while [ $i -lt $num ] # while the divisor is smaller than the entered value...
do
	rest=$((num%i)) # remainder of division, ie module
	if [ $rest -eq 0 ] # if the rest of the current division is 0 it counts as perfect division
	then
		cont=$((cont+1))
	fi
	i=$((i+1)) # add the divider
done

if [ $cont -eq 0 ] # tests to see if there was any perfect division, if there was a perfect division the number is prime, else it is not
then 
	echo "Prime"
else
	echo "Not prime"
fi
