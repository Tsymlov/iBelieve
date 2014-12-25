//
//  ViewController.m
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/16/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import "AuthViewController.h"

@interface AuthViewController ()

@end

@implementation AuthViewController

NSString *const fromAuthToStartSegueID = @"FromAuthToStart";
NSString *const fromAuthToRestoreSegueID = @"FromAuthToRestore";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonTapped:(id)sender {
    [self performSegueWithIdentifier:fromAuthToStartSegueID sender:self];
}

- (IBAction)forgotPassTapped:(id)sender {
    [self performSegueWithIdentifier:fromAuthToRestoreSegueID sender:self];
}
@end
