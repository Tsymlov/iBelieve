//
//  User.h
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/18/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Confessions.h"

@interface User : NSObject

@property (nonatomic, strong) NSString* firstName;
@property (nonatomic, strong) NSString* lastName;
@property (nonatomic, strong) NSString* password;
@property (nonatomic, strong) NSString* email;
@property (nonatomic, strong) NSString* userPicImagePath;
@property (nonatomic, assign) enum confessions confession;

@end
