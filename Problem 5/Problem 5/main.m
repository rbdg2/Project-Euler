//
//  main.m
//  Problem 5
//
//  Created by Robert De Guzman on 9/25/14.
//
//

/*
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 */

#import <Foundation/Foundation.h>

int checkForDivisibility(int number, int lowestDivisor, int highestDivisor)
{
    for (int i = lowestDivisor; i <= highestDivisor; i++)
    {
        if(number%i == 0)
        {
            if(i == highestDivisor)
            {
                NSLog(@"%i/%i = %i",number,i,number/i);
                NSLog(@"This is the one: %i",number);
                return 5;
            }
        } else
        {
            NSLog(@"%i/%i = %i",number,i,number/i);
            break;
        }
    }
    return 0;
}

int main(int argc, const char * argv[])
{
    int minimum = 11;
    int maximum = 20;
    int number = 461890;
    while(number > 0)
    {
        int result = checkForDivisibility(number, minimum, maximum);
        if(result == 5)
        {
            break;
        } else
        {
            number+=461890;
        }
    }
    return 0;
}

