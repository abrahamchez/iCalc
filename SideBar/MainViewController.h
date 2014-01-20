//
//  MainViewController.h
//  SideBar
//
//  Created by Abraham Sánchez Jiménez on 1/19/14.
//  Copyright (c) 2014 Abraham Sánchez Jiménez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController{
    double result;
    NSInteger currentOperation;
    double currentNumber;
    
}

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *contentItems;
@property (strong, nonatomic) IBOutlet UILabel *labelResult;

- (IBAction)buttonNumberPressed:(id)sender;
- (IBAction)buttonOperationPressed:(id)sender;
- (IBAction)buttonClearPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (strong, nonatomic) NSString *textColor;

@end
