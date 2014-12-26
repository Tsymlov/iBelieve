//
//  TermsOfUseViewController.m
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/25/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import "TermsOfUseViewController.h"

@interface TermsOfUseViewController ()

@end

static NSString *const kFromTermsToRegistrationSegueID = @"FromTermsToRegistration";

@implementation TermsOfUseViewController

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

- (IBAction)backTaped:(id)sender {
    [self goBackToRegistration];
}

- (void) goBackToRegistration{
    [self performSegueWithIdentifier:kFromTermsToRegistrationSegueID sender:self];
}
@end
