/*Trajon Felton
CPSC 411
Problem 1 Euler
Program takes the sums of all numbers divisible by 3 and 5 and 
Shows the sum*/

var sum = 0; //Sum of all the values

//For loop, made to gather all of the sums
for i in 0..<1000 {
    //if statement, purpose is to check if the number is divisible by 3 or 5
	if(i % 3 == 0 || i % 5 == 0){
		sum += i;
	}
}

//Output the sum here.
print("Sum is: ", sum);

//End of program
