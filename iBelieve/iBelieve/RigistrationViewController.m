//
//  RigistrationViewController.m
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/16/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import "RigistrationViewController.h"
#import "Validator.h"

@interface RigistrationViewController ()
@end

@implementation RigistrationViewController

NSString *const incorrectValueTitle = @"Некорректное значение";
NSString *const checkEmailAndPasswordMessage = @"Проверьте правильность заполнения электронной почты и пароля.";
NSString *const okActionTitle = @"Ok";
NSString *const fromRegistrationToMainPageSegueID = @"FromRegistrationToMainPage";
NSString *const fromRegistrationToTermsSegueID = @"FromRegistrationToTerms";
NSString *const connectionAlertTitle = @"Сервер недоступен";
NSString *const connectionAlertMessage = @"Попробуйте повторить позже.";

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)registrationTapped:(id)sender {
    [self registerUserAndGoToMainPageIfAllOk];
}


- (void)registerUserAndGoToMainPageIfAllOk {
    if ([self checkTextFields]) {
        if ([self registerUser]) {
            [self createUserAndSetAsCurrent];
            [self performSegueWithIdentifier:fromRegistrationToMainPageSegueID sender:self];
        }else{
            [self showServerConnectionErrorAlert];
        }
    }else{
        [self showIncorrectInputAlert];
    }
}

- (BOOL)checkTextFields{
    NSString* email = self.email.text;
    NSString* password = self.password.text;
    return [Validator checkEmail:email] && [Validator checkPassword:password doesNotMatchEmail:email];
}

//TODO: Implement this.
- (BOOL)registerUser{
    return NO;
}

//TODO: Implement this.
- (void)createUserAndSetAsCurrent{
    
}

- (void)showServerConnectionErrorAlert{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:connectionAlertTitle message:connectionAlertMessage preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:okActionTitle style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)showIncorrectInputAlert{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:incorrectValueTitle message:checkEmailAndPasswordMessage preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:okActionTitle style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)termsOfUseTapped:(id)sender {
    [self showTermsOfUse];
}

- (void)showTermsOfUse{
    [self performSegueWithIdentifier:fromRegistrationToTermsSegueID sender:self];
}
@end
