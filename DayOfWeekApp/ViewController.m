//
//  ViewController.m
//  DayOfWeekApp
//
//  Created by Daniel Luo on 8/8/14.
//  Copyright (c) 2014 Daniel Luo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateButtonPressed:(id)sender {
    
    NSLog(@"Calculate Pressed");
    
    bool invalid = false;
    
    //First leap year must be determined:
    //Start with y1:
    
    short y1 = [[self.year1TextField text] floatValue];
    short addon1 = 0;
    //Now y2:
    
    short y2 = [[self.year2TextField text] floatValue];
    short yearcode = ((y2 / 4) + y2);
    NSLog(@"Year code: %d", yearcode);
    
    //Determine Add-on:
    
    if(y1 == 17 && y2 >= 58) {
        addon1 = 5;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 18){
        addon1 = 3;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 19){
        addon1 = 1;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 20){
        addon1 = 0;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 21){
        addon1 = 5;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 22){
        addon1 = 3;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 23){
        addon1 = 1;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 24){
        addon1 = 0;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 25){
        addon1 = 5;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 26){
        addon1 = 3;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 27){
        addon1 = 1;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 28){
        addon1 = 0;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 29){
        addon1 = 5;
        NSLog(@"Add-on: %d", addon1);
    }
    else if(y1 == 30){
        addon1 = 3;
        NSLog(@"Add-on: %d", addon1);
    }
    else {
        invalid = true;
    }
    
    // Determine leap year:
    
    bool leapyear = false;
    short fullyear = ((y1 * 100) + y2);
    NSLog(@"Full year: %d", fullyear);
    
    if(fullyear % 400 == 0) {
        leapyear = true;
        NSLog(@"Leap year true");
    }
    else if(fullyear % 100 == 0){
        leapyear = false;
        NSLog(@"Not a leap year");
    }
    else if(fullyear % 4 == 0) {
        leapyear = true;
        NSLog(@"Leap year true");
    }
    else {
        leapyear = false;
        NSLog(@"Not a leap year");
    }
    
    
    //Start with the month:
    
    short month = [[self.monthTextField text] floatValue];
    short monthcode = 0;
    
    if(leapyear == true && month ==1) {
        
        monthcode = 5;
        NSLog(@"Month Code: %d", monthcode);
    }
    else if(leapyear == true && month == 2){
        monthcode = 1;
        NSLog(@"Month Code: %d", monthcode);
    }
    else{
        if(month == 1) {
            monthcode = 6;
            NSLog(@"Month Code: %d", monthcode);
        }
        else if(month == 2){
            monthcode = 2;
            NSLog(@"Month Code: %d", monthcode);
        }
        
        else if(month == 3){
            monthcode = 2;
            NSLog(@"Month Code: %d", monthcode);
        }
        else if(month == 4){
            monthcode = 5;
            NSLog(@"Month Code: %d", monthcode);
        }
        else if(month == 5){
            monthcode = 0;
            NSLog(@"Month Code: %d", monthcode);
        }
        else if(month == 6){
            monthcode = 3;
            NSLog(@"Month Code: %d", monthcode);
        }
        else if(month == 7){
            monthcode = 5;
            NSLog(@"Month Code: %d", monthcode);
        }
        else if(month == 8){
            monthcode = 1;
            NSLog(@"Month Code: %d", monthcode);
        }
        else if(month == 9){
            monthcode = 4;
            NSLog(@"Month Code: %d", monthcode);
        }
        else if(month == 10){
            monthcode = 6;
            NSLog(@"Month Code: %d", monthcode);
        }
        else if(month == 11){
            monthcode = 2;
            NSLog(@"Month Code: %d", monthcode);
        }
        else if(month == 12){
            monthcode = 4;
            NSLog(@"Month Code: %d", monthcode);
        }
        else {
            invalid = true;
        }
    }
    
    
    
    //Now the day; simple enough:
    
    short day = [[self.dayTextField text] floatValue];
    NSLog(@"Day: %d", day);
    
    
    //Time for some addition!:
    
    short longcode = monthcode + day + addon1 + yearcode;
    NSLog(@"Long code: %d", longcode);
    
    //short longcode2 = 0;
    //if(y2 % 4 == 1) {
    //    longcode2 = longcode - 0.25;
    //    NSLog(@"Long code: %d", longcode2);
    //}
    //else if(y2 % 4 == 2) {
    //    longcode2 = longcode - 0.5;
    //    NSLog(@"Long code: %d", longcode2);
    //}
    //else if(y2 % 4 == 3) {
    //    longcode2 = longcode - 0.75;
    //    NSLog(@"Long code: %d", longcode2);
    //}
    //else {
    //    longcode2 = longcode;
    //    NSLog(@"Long code: %d", longcode2);
    //}
    
    
    
    short supercode = longcode % 7;
    NSLog(@"Super code: %d", supercode);
    
    
    //The important "if" statement:
    
    if(invalid == true) {
        
        NSString *invalidText = [NSString stringWithFormat:@"Invalid Input"];
        
        self.dotwTextField.text = invalidText;
    }
    else {
        
        if(supercode == 1) {
            NSString *MonText = [NSString stringWithFormat:@"Monday"];
            self.dotwTextField.text = MonText;
        }
        else if(supercode == 2) {
            NSString *TuesText = [NSString stringWithFormat:@"Tuesday"];
            self.dotwTextField.text = TuesText;
        }
        else if(supercode == 3) {
            NSString *WedText = [NSString stringWithFormat:@"Wednesday"];
            self.dotwTextField.text = WedText;
        }
        else if(supercode == 4) {
            NSString *ThuText = [NSString stringWithFormat:@"Thursday"];
            self.dotwTextField.text = ThuText;
        }
        else if(supercode == 5) {
            NSString *FriText = [NSString stringWithFormat:@"Friday"];
            self.dotwTextField.text = FriText;
        }
        else if(supercode == 6) {
            NSString *SatText = [NSString stringWithFormat:@"Saturday"];
            self.dotwTextField.text = SatText;
        }
        else {
            NSString *SunText = [NSString stringWithFormat:@"Sunday"];
            self.dotwTextField.text = SunText;
        }
    }
    
    
}

@end
