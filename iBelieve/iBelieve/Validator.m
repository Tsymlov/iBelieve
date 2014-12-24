//
//  Validator.m
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/24/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import "Validator.h"

@implementation Validator

NSString* const commerceA = @"@";

+ (BOOL) checkEmail:(NSString*)value{
    BOOL emailIsNotEmptyString = [value length]>0;
    BOOL emailContainsCommerceA = [value containsString:commerceA];
    if ( emailIsNotEmptyString && emailContainsCommerceA){
        NSInteger lastIndex = [value length] - 1;
        NSString* lastCharacter = [value substringFromIndex:lastIndex];
        NSString* firstCharacter = [value substringToIndex:1];
        BOOL commerceAIsNotLastChar = ! [lastCharacter isEqual:commerceA];
        BOOL commerceAIsNotFirstChar = ! [firstCharacter isEqual:commerceA];
        if(commerceAIsNotLastChar && commerceAIsNotFirstChar) {
            return YES;
        }
    }
    return NO;
}

+ (BOOL) checkPassword:(NSString*)value{
    if ([value length] > 0) {
        return YES;
    }
    return NO;
}

@end
