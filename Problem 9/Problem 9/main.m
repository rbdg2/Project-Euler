//
//  main.m
//  Problem 9
//
//  Created by Robert De Guzman on 9/25/14.
//
//

/*
 A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 
 a^2 + b^2 = c^2
 For example, 3^2 + 4^2 = 9 + 16 = 25
                             5^2 = 25.
 
 There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 Find the product abc.
 */

#import <Foundation/Foundation.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    int a,b,c;
    
    for(int i=0; i < 100; i++)
    {
        for (int j=i; j < 100; j++) {
            a = pow(j,2) - pow(i, 2);
            b = 2*i*j;
            c = pow(a, 2) + pow(b, 2);
            c = sqrt(c);
//            NSLog(@"%i + %i = %i",a,b,c);
            if(a+b+c == 1000)
            {
                NSLog(@"Answer is %i(^2) + %i(^2) == %i(^2)",a,b,c);
                NSLog(@"abc = %i",a*b*c);
                break;
            }
        }
    }
    return 0;
}

