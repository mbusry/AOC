//
//  ViewController.m
//  testApp2
//
//  Created by Michael on 8/21/13.
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
     d- Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
     d- Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
     d- Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
     d- Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
     d- Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
     d- Call the Add function passing in two integer values. Capture the return of this function into a variable.
     d- Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
     d- Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
     d- Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
     
     DisplayAlertWithString Function
     - Take the passed in NSString and display it in the alert view
     - Create an UIAlertView
     
     */
int addNumOne = 1;
int addNumTwo = 5;
int comp1 = 5;
int comp2 = 6;
NSString *word1 = @"Michael";
NSString *word2 = @"Usry";
NSString *titleOne = @"The number is ";
int titleNumber = 00;



NSString* result1 = [self Add:addNumOne :addNumTwo];
NSString* appendSentence = [self Append:word1 :word2];
NSString* alertWindow = [self DisplayAlertWithString:titleOne :result1];
BOOL compareResult = [self Compare:comp1 :comp2];
    if (compareResult == 1) {
        NSString *c1 = [NSString stringWithFormat:@"%d", comp1];
        NSString *c2 = [NSString stringWithFormat:@"%d", comp2];

        NSString *alertWindow = [self Append:c1 :c2];
        [self DisplayAlertWithString:alertWindow :@"True"];
    }
    


NSLog(@"Top of the page Add %@",result1);
NSLog(@"Top of the page Compare %d",compareResult);
NSLog(@"Top of the page appendSentence %@",appendSentence);
NSLog(@"Top of the page alertWindow %@",alertWindow);



    
    
}

-(NSString*)Add:(NSInteger)numOne: (NSInteger)numTwo
{
    int result = numOne + numTwo;
    NSLog(@"In the Add function %d",result);
    NSString *number = [NSString stringWithFormat:@"%d", result];

    return number;
    
}

-(BOOL)Compare:(NSInteger)numThree: (NSInteger)numFour
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
    
//    UIAlertView *messageView = [[UIAlertView alloc] initWithTitle:@"We Welcome you" message:pO delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//    
//    if (messageView != nil)
//    {
//        [messageView show];
//    }
    return pO;
}

-(NSString*)DisplayAlertWithString: (NSString*)dawsTitle :(NSString*)daws1
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:dawsTitle message:daws1 delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
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
