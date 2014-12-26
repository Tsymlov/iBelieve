//
//  StartPageViewController.m
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/16/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import "StartPageViewController.h"

@interface StartPageViewController ()

@end

static NSString* const kFromStartPageToAuthSegueID = @"FromStartPageToAuth";
static NSString* const kFromStartPageToRegistrationSegueID = @"FromStartPageToRegistration";

@implementation StartPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)enterTapped:(id)sender {
    [self performSegueWithIdentifier:kFromStartPageToAuthSegueID sender:self];
}

- (IBAction)registrationTapped:(id)sender {
    [self performSegueWithIdentifier:kFromStartPageToRegistrationSegueID sender:self];
}
@end
