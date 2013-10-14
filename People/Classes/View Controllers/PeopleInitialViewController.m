//
//  PeopleInitialViewController.m
//  People
//
//  Created by Bruno Koga on 10/11/13.
//  Copyright (c) 2013 CI&T. All rights reserved.
//

#import "PeopleInitialViewController.h"

@interface PeopleInitialViewController ()

@end

@implementation PeopleInitialViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

static NSString * const kInitialToLoginSegue = @"InitialToLoginSegue";

- (IBAction)transitionToLogin:(id)sender
{
    [self performSegueWithIdentifier:kInitialToLoginSegue
                              sender:self];
}



@end
