//
//  PeopleStoryboardTest.m
//  People
//
//  Created by Bruno Koga on 10/15/13.
//  Copyright (c) 2013 CI&T. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PeopleInitialViewController.h"
#import "PeopleLoginViewController.h"
#import "PeopleSearchViewController.h"
#import "PeopleProfileViewController.h"

@interface PeopleStoryboardTest : XCTestCase
@property (nonatomic, strong) UIStoryboard *storyboard;
@end

@implementation PeopleStoryboardTest

- (void)setUp
{
    [super setUp];
    self.storyboard = [UIStoryboard storyboardWithName:kStoryboardName bundle:nil];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    self.storyboard = nil;
    [super tearDown];
}

static NSString * const kStoryboardName = @"MainStoryboard_iPhone";

- (void)testStoryboardInitialization
{
    
    //test if Storyboard exists
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:kStoryboardName bundle:nil];
    XCTAssertNotNil(storyboard, @"Storyboard shouldn't be nil");
    XCTAssertNotNil(self.storyboard, @"Storyboard shouldn't be nil");
}

- (void)testInitialNavigationController
{
    //test if storyboard's initial view controller exists
    //and it should be a navigationController
    UINavigationController *navigationViewController = [self.storyboard instantiateInitialViewController];
    XCTAssertTrue([navigationViewController isKindOfClass:[UINavigationController class]], @"Initial View Controller should be a Navigation Controller");
}

- (void)testInitialViewController
{
    //test if storyboard has the correct View Controllers
    PeopleInitialViewController *initialViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PeopleInitialViewController"];
    XCTAssertTrue([initialViewController isMemberOfClass:[PeopleInitialViewController class]], @"Initial View Controller incorrect");

}

- (void)testLoginViewController
{
    PeopleLoginViewController *loginViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PeopleLoginViewController"];
    XCTAssertTrue([loginViewController isMemberOfClass:[PeopleLoginViewController class]], @"Login View Controller incorrect");

}

- (void)testSearchViewController
{
    PeopleSearchViewController *searchViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PeopleSearchViewController"];
    XCTAssertTrue([searchViewController isMemberOfClass:[PeopleSearchViewController class]], @"Search View Controller incorrect");

}

- (void)testProfileViewController
{
    PeopleProfileViewController *profileViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PeopleProfileViewController"];
    XCTAssertTrue([profileViewController isMemberOfClass:[PeopleProfileViewController class]], @"Profile View Controller incorrect");

}


@end
