//
//  iBelieveTests.m
//  iBelieveTests
//
//  Created by Alexey Tsymlov on 12/16/14.
//  Copyright (c) 2014 iBelieve. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "User.h"

@interface UserTests : XCTestCase

@property (nonatomic, strong) User *testInstance;

@end

@implementation UserTests

- (void)setUp {
    [super setUp];
    self.testInstance = [[User alloc]init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFirstName {
    NSString *expectedValue = @"Steve";
    
    self.testInstance.firstName = expectedValue;
    
    NSString *actualValue = self.testInstance.firstName;
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testLastName {
    NSString *expectedValue = @"Jobs";
    
    self.testInstance.lastName = expectedValue;
    
    NSString *actualValue = self.testInstance.lastName;
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testPassword {
    NSString *expectedValue = @"1234567890";
    
    self.testInstance.password = expectedValue;
    
    NSString *actualValue = self.testInstance.password;
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testEmail {
    NSString *expectedValue = @"test@gmail.com";
    
    self.testInstance.email = expectedValue;
    
    NSString *actualValue = self.testInstance.email;
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testUserPicImagePath{
    NSString *expectedValue = @"test.png";
    
    self.testInstance.userPicImagePath = expectedValue;
    
    NSString *actualValue = self.testInstance.userPicImagePath;
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testConfession_Orthodoxy{
    enum confessions expectedValue = orthodoxy;
    
    self.testInstance.confession = expectedValue;
    
    enum confessions actualValue = self.testInstance.confession;
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testConfession_Islam{
    enum confessions expectedValue = islam;
    
    self.testInstance.confession = expectedValue;
    
    enum confessions actualValue = self.testInstance.confession;
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testConfession_Hebraism{
    enum confessions expectedValue = hebraism;
    
    self.testInstance.confession = expectedValue;
    
    enum confessions actualValue = self.testInstance.confession;
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testConfession_Buddhism{
    enum confessions expectedValue = buddhism;
    
    self.testInstance.confession = expectedValue;
    
    enum confessions actualValue = self.testInstance.confession;
    XCTAssertEqual(expectedValue, actualValue);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
