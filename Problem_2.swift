/** Trajon Felton
CPSC 411
Problem 2 Euler
Sum of all the even umbers of fibonacci up to 4 million
*/


var num1 = 1 //This is the first, or basically the previous number holder
var num2 = 2 //This is the 2nd number, or the previous sum of the first and second numbers in fib.
var evenSum = 2 //This holds the sum of all the even numbers in fibonacci

//Non-recursive solution, runs in 0(n), Basically it adds the mumbers everytime, then swaps the values after adding their sums.
while((num1+num2) < 4000000){
	var sum = num1 + num2
	num1 = num2
	num2 = sum
	if (sum % 2) == 0{
		evenSum += sum
	}
}


//Output the even sum here
print("The sum of all even numbers up to 4 million in fibonacci is \(evenSum)")

//Ennd of the program