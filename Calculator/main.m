//
//  main.m
//  Calculator
//
//  Created by Aeshvarya Verma on 11/25/13.
//  Copyright (c) 2013 Aeshvarya Verma. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScientificCalculator:NSObject        //The subclass ScientificCalculator of type NSObject(parent)

-(void) funcAdd:(int)a :(int)b;                 //Instance method for addition
-(void) funcSub:(int)a :(int)b;                 //Instance method for subtraction
-(void) funcMult:(int)a :(int)b;                //Instance method for multiplication
-(void) funcDiv:(int)a :(int)b;                 //Instance method for Division
-(int) clearDisplay;                            //Instance method to clear the display
-(int) displayAnswer;                           //Instance method to display the answer

@end

@implementation ScientificCalculator           //Implementing the subclass ScientificCalculator

{
    int accumulator;                           //Declaring an instance variable accumulator
}

-(void) funcAdd:(int)a :(int)b                 //Defining the method for addition
{
    accumulator = a + b;
}

-(void) funcSub:(int)a :(int)b                 //Defining the method for subtraction
{
    accumulator = b - a;
}

-(void) funcMult:(int)a :(int)b                //Defining the method for multiplicaiton
{
    accumulator = a * b;
}

-(void) funcDiv:(int)a :(int)b                 //Defining the method for division
{
    accumulator = b/a;
}

-(int) clearDisplay                            //Defining the method for clearing the display
{
    return accumulator = 0;
}

-(int) displayAnswer                           //Defining the method to display the answer
{
    return accumulator;
}

@end


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        ScientificCalculator *myCalc = [ScientificCalculator new];  //Initializing myCalc object of type
                                                                    //ScientificCalculator and allocating
                                                                    //memory to it
        [myCalc clearDisplay];      //Sending clearDisplay message to object myCalc
        [myCalc funcAdd:3 :5];      //Sending funcAdd message with 2 arguments to object myCalc
        NSLog(@"The Addition is:%i",[myCalc displayAnswer]);        //Sending displayAnswer message to
                                                                    //myCalc and displaying using NSLog
        [myCalc clearDisplay];      //Sending clearDisplay message to object myCalc
        [myCalc funcSub:3 :5];      //Sending funcSub message with 2 arguments to object myCalc
        NSLog(@"The subtraction is:%i",[myCalc displayAnswer]);     //Sending displayAnswer message to
                                                                    //myCalc and displaying using NSLog
        [myCalc clearDisplay];      //Sending clearDisplay message to object myCalc
        [myCalc funcMult:3 :5];     //Sending funcMult message with 2 arguments to object myCalc
        NSLog(@"The multiplication is:%i",[myCalc displayAnswer]);  //Sending displayAnswer message to
                                                                    //myCalc and displaying using NSLog
        [myCalc clearDisplay];      //Sending clearDisplay message to object myCalc
        [myCalc funcDiv:3 :6];      //Sending funcDiv message with 2 arguments to object myCalc
        NSLog(@"The division is:%i",[myCalc displayAnswer]);        //Sending displayAnswer message to
                                                                    //myCalc and displaying using NSLog        
    }
    return 0;
}

