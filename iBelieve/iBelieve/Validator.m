//
//  Validator.m
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/24/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import "Validator.h"

static NSInteger const kMinPasswordLength = 6;
static NSInteger const kMaxPasswordLength = 40;

static NSString* const kCommerceA = @"@";

@implementation Validator

+ (BOOL) checkEmail:(NSString*)value{
    BOOL emailIsNotEmptyStringOrNil = [value length]>0;
    BOOL emailContainsCommerceA = [value containsString:kCommerceA];
    
    if ( ! emailIsNotEmptyStringOrNil ||
         ! emailContainsCommerceA){
         return NO;
    }
    
    NSInteger lastIndex = [value length] - 1;
    NSString* lastCharacter = [value substringFromIndex:lastIndex];
    NSString* firstCharacter = [value substringToIndex:1];
    
    BOOL commerceAIsNotLastChar = ! [lastCharacter isEqual:kCommerceA];
    BOOL commerceAIsNotFirstChar = ! [firstCharacter isEqual:kCommerceA];
    
    if( ! commerceAIsNotLastChar ||
        ! commerceAIsNotFirstChar) {
        return NO;
    }
    
    return YES;
}

+ (BOOL) checkPassword:(NSString*)value doesNotMatchEmail:(NSString*)email{
    BOOL passIsNotEmptyStringOrNil = [value length] > 0;
    BOOL passIsNotMatchingEmail = ![value isEqualToString:email];
    BOOL passLengthIsNotLessThenMin = !([value length] < kMinPasswordLength);
    BOOL passLengthIsNotMoreThenMax = !([value length] > kMaxPasswordLength);
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
