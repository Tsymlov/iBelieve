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

static NSString *const kIncorrectValueTitle = @"Некорректное значение";
static NSString *const kCheckEmailAndPasswordMessage = @"Проверьте правильность заполнения электронной почты и пароля.";
static NSString *const kOkActionTitle = @"Ok";
static NSString *const kFromRegistrationToMainPageSegueID = @"FromRegistrationToMainPage";
static NSString *const kFromRegistrationToTermsSegueID = @"FromRegistrationToTerms";
static NSString *const kFromRegistrationToStartSegueIS = @"FromRegistrationToStart";
static NSString *const kConnectionAlertTitle = @"Сервер недоступен";
static NSString *const kConnectionAlertMessage = @"Попробуйте повторить позже.";

@implementation RigistrationViewController

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
            [self performSegueWithIdentifier:kFromRegistrationToMainPageSegueID sender:self];
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
    return YES;
}

//TODO: Implement this.
- (void)createUserAndSetAsCurrent{
    
}

- (void)showServerConnectionErrorAlert{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:kConnectionAlertTitle message:kConnectionAlertMessage preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:kOkActionTitle style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)showIncorrectInputAlert{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:kIncorrectValueTitle message:kCheckEmailAndPasswordMessage preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:kOkActionTitle style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)termsOfUseTapped:(id)sender {
    [self showTermsOfUse];
}

- (IBAction)backButtonTapped:(id)sender {
    [self performSegueWithIdentifier:kFromRegistrationToStartSegueIS sender:self];
}

- (void)showTermsOfUse{
    [self performSegueWithIdentifier:kFromRegistrationToTermsSegueID sender:self];
}
@end
