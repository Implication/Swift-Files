/*Trajon Felton
CPSC 411
Problem 3 Euler
Finds the largest prime factor of a value specified in the code itself*/

//Function purpose is to find the largest prime factor specified by value
func LargestPrimeFactorOf(value: Int) -> Array<Int>
{
    var primeFactorsList: [Int] = [] //Holds all the prime factors into an array
 
    var num = value //Num is used to divide and find the gcd of the value
    var factorTest = 2 //Defaultly we start with 2, then work up to find bigger factors
 
	//While the number is still larger than 2, i.e, while its not 1, we loop
    while num > 2 {
			//While the number is divisible by the factor, we keep dividing until it no longer 
		//is
        while num % factorTest == 0 { 
            // repeating factors is OK
            primeFactorsList.append(factorTest)
            num = num / factorTest
        }
 
      if factorTest > 2 {
            // test odds;
            // could use primes table, but not much faster
            factorTest = factorTest + 2
        }
        else {
            factorTest = 3
        }
        if factorTest * factorTest > num {
            if num > 1 {
                // Theorem: if integer num > 1 has no prime divisor <= sqrt(num), 
                //   then n is prime.
                primeFactorsList.append(num)
                num = 1
            }
        }
    }
 
    return primeFactorsList
}
 
//Here we place the value we want to find hte factor of
var a = LargestPrimeFactorOf(value: 600851475143)
//Print out the value here.
print("The largest prime factor is \(a.max()!)")

//End of program