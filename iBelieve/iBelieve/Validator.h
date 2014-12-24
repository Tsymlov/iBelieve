//
//  Validator.h
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/24/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Validator : NSObject

+ (BOOL) checkEmail:(NSString*)value;
+ (BOOL) checkPassword:(NSString*)value;

@end
