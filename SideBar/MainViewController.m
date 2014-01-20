//
//  MainViewController.m
//  SideBar
//
//  Created by Abraham Sánchez Jiménez on 1/19/14.
//  Copyright (c) 2014 Abraham Sánchez Jiménez. All rights reserved.
//

#import "MainViewController.h"
#import "SWRevealViewController.h"

@interface MainViewController ()


@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (self.textColor == nil) {
        self.textColor = @"Default";
        self.view.backgroundColor = [UIColor colorWithRed:52/255.0 green:152/255.0 blue:219/255.0 alpha:1.0];
        for (UIButton *buttons in self.contentItems) {
            [buttons setTitleColor:[UIColor colorWithRed:52/255.0 green:152/255.0 blue:219/255.0 alpha:1.0] forState:UIControlStateNormal];
        }
    }
    if ([self.textColor  isEqual: @"turquoise"]){
        self.view.backgroundColor = [UIColor colorWithRed:26/255.0 green:188/255.0 blue:156/255.0 alpha:1.0];
        for (UIButton *buttons in self.contentItems) {
            [buttons setTitleColor:[UIColor colorWithRed:26/255.0 green:188/255.0 blue:156/255.0 alpha:1.0] forState:UIControlStateNormal];
        }
    }
    if ([self.textColor  isEqual: @"emerland"]){
        self.view.backgroundColor = [UIColor colorWithRed:46/255.0 green:204/255.0 blue:113/255.0 alpha:1.0];
        for (UIButton *buttons in self.contentItems) {
            [buttons setTitleColor:[UIColor colorWithRed:46/255.0 green:204/255.0 blue:113/255.0 alpha:1.0] forState:UIControlStateNormal];
        }
    }
    if ([self.textColor  isEqual: @"blue"]){
        self.view.backgroundColor = [UIColor colorWithRed:52/255.0 green:152/255.0 blue:219/255.0 alpha:1.0];
        for (UIButton *buttons in self.contentItems) {
            [buttons setTitleColor:[UIColor colorWithRed:52/255.0 green:152/255.0 blue:219/255.0 alpha:1.0] forState:UIControlStateNormal];
        }
    }
    if ([self.textColor  isEqual: @"yellow"]){
        self.view.backgroundColor = [UIColor colorWithRed:241/255.0 green:196/255.0 blue:15/255.0 alpha:1.0];
        for (UIButton *buttons in self.contentItems) {
            [buttons setTitleColor:[UIColor colorWithRed:241/255.0 green:196/255.0 blue:15/255.0 alpha:1.0] forState:UIControlStateNormal];
        }
    }
    if ([self.textColor  isEqual: @"orange"]){
        self.view.backgroundColor = [UIColor colorWithRed:230/255.0 green:126/255.0 blue:34/255.0 alpha:1.0];
        for (UIButton *buttons in self.contentItems) {
            [buttons setTitleColor:[UIColor colorWithRed:230/255.0 green:126/255.0 blue:34/255.0 alpha:1.0] forState:UIControlStateNormal];
        }
    }
    if ([self.textColor  isEqual: @"red"]){
        self.view.backgroundColor = [UIColor colorWithRed:192/255.0 green:57/255.0 blue:43/255.0 alpha:1.0];
        for (UIButton *buttons in self.contentItems) {
            [buttons setTitleColor:[UIColor colorWithRed:192/255.0 green:57/255.0 blue:43/255.0 alpha:1.0] forState:UIControlStateNormal];
        }
    }
    if ([self.textColor  isEqual: @"purple"]){
        self.view.backgroundColor = [UIColor colorWithRed:142/255.0 green:68/255.0 blue:173/255.0 alpha:1.0];
        for (UIButton *buttons in self.contentItems) {
            [buttons setTitleColor:[UIColor colorWithRed:142/255.0 green:68/255.0 blue:173/255.0 alpha:1.0] forState:UIControlStateNormal];
        }
    }
    
    // Change button color
//    _sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.9f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonNumberPressed:(id)sender {
    currentNumber = currentNumber *10 + (int) [sender tag];
    self.labelResult.text = [NSString stringWithFormat:@"%lg", currentNumber];
}

- (IBAction)buttonOperationPressed:(id)sender {
    if (currentOperation == 0){
        result = currentNumber;
    }
    else {
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                
                break;
            case 2:
                result = result - currentNumber;
                
                break;
            case 3:
                result = result * currentNumber;
                break;
            case 4:
                result = result / currentNumber;
                break;
            case 5:
                currentOperation = 0;
                break;
        }
    }
    currentNumber = 0;
    self.labelResult.text = [NSString stringWithFormat:@"%lg", result];
    if ([sender tag] == 0){
        result = 0;
    }
    currentOperation = (unsigned int)[sender tag];
}

- (IBAction)buttonClearPressed:(id)sender {
    self.labelResult.text = @"0";
    currentOperation = 0;
}

@end
