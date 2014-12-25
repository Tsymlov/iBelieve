//
//  Validator.m
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/24/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import "Validator.h"

@implementation Validator

NSInteger const minPasswordLength = 6;
NSInteger const maxPasswordLength = 40;

NSString* const commerceA = @"@";

+ (BOOL) checkEmail:(NSString*)value{
    BOOL emailIsNotEmptyStringOrNil = [value length]>0;
    BOOL emailContainsCommerceA = [value containsString:commerceA];
    
    if ( ! emailIsNotEmptyStringOrNil ||
         ! emailContainsCommerceA){
         return NO;
    }
    
    NSInteger lastIndex = [value length] - 1;
    NSString* lastCharacter = [value substringFromIndex:lastIndex];
    NSString* firstCharacter = [value substringToIndex:1];
    
    BOOL commerceAIsNotLastChar = ! [lastCharacter isEqual:commerceA];
    BOOL commerceAIsNotFirstChar = ! [firstCharacter isEqual:commerceA];
    
    if( ! commerceAIsNotLastChar ||
        ! commerceAIsNotFirstChar) {
        return NO;
    }
    
    return YES;
}

+ (BOOL) checkPassword:(NSString*)value doesNotMatchEmail:(NSString*)email{
    BOOL passIsNotEmptyStringOrNil = [value length] > 0;
    BOOL passIsNotMatchingEmail = ![value isEqualToString:email];
    BOOL passLengthIsNotLessThenMin = !([value length] < minPasswordLength);
    BOOL passLengthIsNotMoreThenMax = !([value length] > maxPasswordLength);
    BOOL passDoesNotContainsDigitsOnly = YES; //TODO:
    
    if (passIsNotEmptyStringOrNil &&
        passIsNotMatchingEmail &&
        passLengthIsNotLessThenMin &&
        passLengthIsNotMoreThenMax &&
        passDoesNotContainsDigitsOnly) {
        return YES;
    }
    return NO;
}

+ (BOOL) checkEmail:(NSString *)email andPassword:(NSString*)pass{
    return [self checkEmail:email] && [self checkPassword:pass doesNotMatchEmail:email];
}

@end
