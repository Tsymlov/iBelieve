//
//  ValidatorTests.m
//  iBelieve
//
//  Created by Alexey Tsymlov on 12/24/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Validator.h"

@interface ValidatorTests : XCTestCase

@end

@implementation ValidatorTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCheckEmail_EmptyValue{
    BOOL expectedValue = NO;
    NSString* email = @"";
    BOOL actualValue = [Validator checkEmail:email];
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testCheckEmail_NilValue{
    BOOL expectedValue = NO;
    NSString* email = nil;
    BOOL actualValue = [Validator checkEmail:email];
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testCheckEmail_CorrectValue{
    BOOL expectedValue = YES;
    NSString* email = @"alexey.tsymlov@gmail.com";
    BOOL actualValue = [Validator checkEmail:email];
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testCheckEmail_WithoutCommerceAAtValue{
    BOOL expectedValue = NO;
    NSString* email = @"alexey.tsymlov gmail.com";
    BOOL actualValue = [Validator checkEmail:email];
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testCheckEmail_WithCommerceAAtTheEndOfValue{
    BOOL expectedValue = NO;
    NSString* email = @"alexey.tsymlov@";
    BOOL actualValue = [Validator checkEmail:email];
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testCheckEmail_WithCommerceAAtTheBeginingOfValue{
    BOOL expectedValue = NO;
    NSString* email = @"@gmail.com";
    BOOL actualValue = [Validator checkEmail:email];
    XCTAssertEqual(expectedValue, actualValue);
}

//TODO:
//- (void)testCheckEmail_WithDoubleCommerceA{
//    BOOL expectedValue = NO;
//    NSString* email = @"alexey.tsymlov@@gmail.com";
//    BOOL actualValue = [Validator checkEmail:email];
//    XCTAssertEqual(expectedValue, actualValue);
//}

- (void)testCheckPassword_EmptyValue{
    BOOL expectedValue = NO;
    NSString* pass = @"";
    BOOL actualValue = [Validator checkPassword:pass];
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testCheckPassword_NilValue{
    BOOL expectedValue = NO;
    NSString* pass = nil;
    BOOL actualValue = [Validator checkPassword:pass];
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testCheckPassword_CorrectValue{
    BOOL expectedValue = YES;
    NSString* pass = @"as;dfV324&^";
    BOOL actualValue = [Validator checkPassword:pass];
    XCTAssertEqual(expectedValue, actualValue);
}

@end
