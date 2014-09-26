//
//  main.m
//  Problem 10
//
//  Created by Robert De Guzman on 9/25/14.
//
//

#import <Foundation/Foundation.h>

long returnPrimeNumber (long number)
{
    for (long i=2; i < number; i++)
    {
        if(number%i == 0)
            return 0;
    }
    NSLog(@"%li",number);
    return number;
}

int main(int argc, const char * argv[])
{
    long sum=0;
    for (long i=2; i < 2000000; i++)
    {
        if(i%2 != 0 || i == 2 || (i%3 != 0 || i == 3))
        {
            long prime = returnPrimeNumber(i);
            sum += prime;
        }
    }
    NSLog(@"SUM = %li",sum);
    return 0;
}

