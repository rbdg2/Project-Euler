//
//  main.m
//  Problem 6
//
//  Created by Robert De Guzman on 9/25/14.
//
//

#import <Foundation/Foundation.h>
#include <math.h>

int sumOfSquares(int minimum, int maximum)
{
    int sum = 0;
    for (int i=minimum; i <= maximum; i++)
    {
        sum += pow(i, 2);
    }
    return sum;
}

int squareOfSum(int minimum, int maximum)
{
    int sum = 0;
    for (int i=minimum; i <= maximum; i++)
    {
        sum += i;
    }
    sum = pow(sum, 2);
    return sum;
}

int main(int argc, const char * argv[])
{
    int min = 1;
    int max = 100;
    int sumSquare = sumOfSquares(min, max);
    int squareSum = squareOfSum(min, max);
    
    NSLog(@"%i - %i = %i",squareSum,sumSquare,squareSum-sumSquare);
    return 0;
}

