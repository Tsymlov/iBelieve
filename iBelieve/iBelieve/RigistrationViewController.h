//
//  RigistrationViewController.h
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/16/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RigistrationViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)registrationTapped:(id)sender;
- (IBAction)termsOfUseTapped:(id)sender;

@end
