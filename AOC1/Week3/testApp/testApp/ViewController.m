//
//  ViewController.m
//  testApp
//
//  Created by Michael on 8/18/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  /*
    D- Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
    D- Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
    D- Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
    D- Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    D- Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
    D- Call the Add function passing in two integer values. Capture the return of this function into a variable.
    - Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    - Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    - Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
      
   DisplayAlertWithString Function
    - Take the passed in NSString and display it in the alert view
    - Create an UIAlertView

    */
    float result = [self Add: 1 : 5];
    int compareResult = [self Compare:5 :5];
    NSString* appendSentence = [self Append:@"Michael" :@"Usry"];

   
    NSLog(@"ViewDidLoad: %.1f", result);
}




-(float)Add:(NSInteger)numOne: (NSInteger)numTwo
  {
      float result = numOne + numTwo;
      
      NSLog(@"%.1f", result);
//      NSString *stringReturn = [NSString stringWithFloat:@"%f",result];
//[ViewController Add: result];
      return result;
  }

-(int)Compare:(NSInteger)numThree: (NSInteger)numFour
{
    if (numFour == numThree) {
        NSLog(@"Result is True");
        return TRUE;
    }else{
        NSLog(@"Result is False");
        return FALSE;
    }
}

-(NSString*)Append:(NSString*)partOne: (NSString*)partTwo
{
    NSMutableString *pO = [NSMutableString stringWithString:(NSString*)partOne];
    NSString* addSpace = @" ";
    [pO appendString:addSpace];
    [pO appendString:partTwo];
    
    NSLog(@"Sentence: %@",pO);
    
    UIAlertView *messageView = [[UIAlertView alloc] initWithTitle:@"We Welcome you" message:pO delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    if (messageView != nil)
    {
        [messageView show];
    }
}

-(NSString*)DisplayAlertWithString: (NSString*)daws1
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Michael Usry AOC 1" message:daws1 delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    if (alertView != nil)
    {
        [alertView show];
    }
    
    return FALSE;
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
