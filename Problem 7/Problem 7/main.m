//
//  main.m
//  Problem 7
//
//  Created by Robert De Guzman on 9/25/14.
//
//

/*
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 
 What is the 10 001st prime number?
 */

#import <Foundation/Foundation.h>

BOOL isAPrimeNumber (int number)
{
    for(int i=2; i < number; i++)
    {
        if(number%i == 0)
        {
            return NO;
        }
    }
    return YES;
}

int main(int argc, const char * argv[])
{
    int current = 2;
    int maximum = 10001;
    int array[maximum-1];
    for(int i=0; i < maximum; i++)
    {
        while (maximum > 0)
        {
            if(isAPrimeNumber(current))
            {
                array[i] = current;
                NSLog(@"array[%i] = %i",i,array[i]);
                current++;
                break;
            } else
            {
                current++;
            }
        }
    }
//    NSLog(@"array[%i] = %i",10000,array[10000]);
    return 0;
}

