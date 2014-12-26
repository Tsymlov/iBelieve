//
//  RestorePasswordViewController.m
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/18/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import "RestorePasswordViewController.h"

@interface RestorePasswordViewController ()

@end

static NSString *const kFromRestoreToAuthSegueID = @"FromRestoreToAuth";
static NSString *const kSuccessAlertTitle = @"Восстановление пароля";
static NSString *const kSuccessAlertMessage = @"По указанному адресу отправлено письмо с информцией о пароле";
static NSString *const kOkActionTitle = @"Ok";

@implementation RestorePasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)backTapped:(id)sender {
    [self goToAuthPage];
}

- (IBAction)restoreWasTapped:(id)sender {
    if (![self checkEmailField]) {
        [self showIncorrectValueAlert];
        return;
    }
    if (![self accountWithThisMailExist]){
        [self showAccountIsNotExistAlert];
    }
    [self sendRestoreMail];
    [self showSuccessAlert];
}

//TODO: Implement this.
- (BOOL) checkEmailField{
    return YES;
}

//TODO: Implement this.
- (void) showIncorrectValueAlert{
    
}

//TODO: Implement this.
- (void) sendRestoreMail{
    
}

//TODO: Implement this.
- (void) showSuccessAlert{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:kSuccessAlertTitle message:kSuccessAlertMessage preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:kOkActionTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){[self goToAuthPage];}];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
}

//TODO: Implement this.
- (BOOL) accountWithThisMailExist{
    return YES;
}

//TODO: Implement this.
- (void) showAccountIsNotExistAlert{
    
}

- (void) goToAuthPage{
    [self performSegueWithIdentifier:kFromRestoreToAuthSegueID sender:self];
}

@end
