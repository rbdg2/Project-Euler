//
//  main.m
//  Problem 3
//
//  Created by Robert De Guzman on 9/24/14.
//
//

/*
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 ?
 */

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[])
{
    long number = 600851475143;
    long divisor = 2;
    while(number > divisor)
    {
        if(number%divisor == 0)
        {
            number /= divisor;
            divisor = 2;
        } else
        {
            divisor++;
        }
    }
    
    NSLog(@"Largest %li",divisor);
    return 0;
}