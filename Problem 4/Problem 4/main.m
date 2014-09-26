//
//  main.m
//  Problem 4
//
//  Created by Robert De Guzman on 9/24/14.
//
//

#import <Foundation/Foundation.h>

int getLargestPalindromeProduct(int firstNumber, int secondNumber);
int numberOfDigits(int number);
BOOL isNumberAPalindrome(int number);
int reverseInteger(int number);

int main(int argc, const char * argv[])
{
    NSLog(@"Start");
    int largestPalindrome = getLargestPalindromeProduct(999, 999);
    NSLog(@"%i",largestPalindrome);
    return 0;
}

int getLargestPalindromeProduct(int firstNumber, int secondNumber)
{
    int product = firstNumber * secondNumber;
    int first = firstNumber;
    for (int i=product; i > 0; i--)
    {
        if(isNumberAPalindrome(i))
        {
            for(int j=first; j > 0; j--)
            {
                for(int k=j; k > 0; k--)
                {
                    if(j * k == i)
                    {
                        if(numberOfDigits(j) == numberOfDigits(firstNumber) && numberOfDigits(k) == numberOfDigits(secondNumber))
                        {
//                            NSLog(@"%i * %i = %i",j, k,i);
                            return i;
                        }
                    }
                }
            }
        }
    }
    return 0;
}

BOOL isNumberAPalindrome(int number)
{
    if(reverseInteger(number) == number)
    {
        return YES;
    } else
    {
        return NO;
    }
}

int numberOfDigits(int number)
{
    int digitCount = 0;
    int numberOfDigits = number;
    while(numberOfDigits != 0)
    {
        numberOfDigits /= 10;
        ++digitCount;
    }
    return digitCount;

}
int reverseInteger(int number)
{
    int n = number,reverse = 0;
    while (n != 0)
    {
        reverse = reverse * 10;
        reverse = reverse + n%10;
        n = n/10;
    }
    return reverse;
}