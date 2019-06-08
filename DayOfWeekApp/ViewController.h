//
//  ViewController.h
//  DayOfWeekApp
//
//  Created by Daniel Luo on 8/8/14.
//  Copyright (c) 2014 Daniel Luo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *monthTextField;
@property (strong, nonatomic) IBOutlet UITextField *dayTextField;
@property (strong, nonatomic) IBOutlet UITextField *year1TextField;
@property (strong, nonatomic) IBOutlet UITextField *year2TextField;
@property (weak, nonatomic) IBOutlet UITextField *dotwTextField;
@property (weak, nonatomic) IBOutlet UITabBarItem *homeTab;
@property (weak, nonatomic) IBOutlet UITabBarItem *calcTab;
@property (weak, nonatomic) IBOutlet UITabBarItem *instructTab;
- (IBAction)calculateButtonPressed:(id)sender;

@end
