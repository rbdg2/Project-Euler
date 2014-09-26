//
//  main.m
//  Problem 4 (shaimir)
//
//  Created by Robert De Guzman on 9/24/14.
//
//

#import <Foundation/Foundation.h>

BOOL isPalindrome(int number);

int main(int argc, const char * argv[])
{
    NSLog(@"Start");
    int product = 0;
    int currentMax = 0;
    for (int i = 999; i > 99; i--)
    {
        for(int j = i; j > 99; j--)
        {
            product = i*j;
            if(isPalindrome(product) && product > currentMax)
            {
                currentMax = product;
            }
        }
    }
    
    NSLog(@"%i",currentMax);
    return 0;
}

BOOL isPalindrome(int number)
{
    int temp = number;
    int sum = 0;
    
    while(temp > 0)
    {
        sum = sum*10 + temp%10;
        temp = temp/10;
    }
    
    if(sum==number)
        return YES;
    else
        return NO;
}