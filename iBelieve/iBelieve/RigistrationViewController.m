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

- (IBAction)registrationTapped:(id)sender {
    [self goToMainPageIfAllOk];
}


- (void)goToMainPageIfAllOk {
    if ([self checkTextFields]) {
        [self performSegueWithIdentifier:fromRegistrationToMainPageSegueID sender:self];
    }else{
        [self showAlert];
    }
}

- (BOOL)checkTextFields{
    NSString* email = self.email.text;
    NSString* password = self.password.text;
    return [Validator checkEmail:email] && [Validator checkPassword:password doesNotMatchEmail:email];
}

- (void)showAlert{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:incorrectValueTitle message:checkEmailAndPasswordMessage preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:okActionTitle style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)termsOfUseTapped:(id)sender {
    [self showTermsOfUse];
}

- (void)showTermsOfUse{
    //TODO:Implement it.
}
@end
