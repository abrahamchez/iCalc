//
//  MainViewController.h
//  SideBar
//
//  Created by Abraham Sánchez Jiménez on 1/19/14.
//  Copyright (c) 2014 Abraham Sánchez Jiménez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UILabel *labelText;
@property (strong, nonatomic) NSString *textColor;

@end
