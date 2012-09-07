//
//  BDViewController.m
//  BDDimGlassView
//
//  Created by norsez on 9/7/12.
//  Copyright (c) 2012 Bluedot. All rights reserved.
//

#import "BDViewController.h"

@interface BDViewController ()

@end

@implementation BDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)viewDidUnload
{
    [super viewDidUnload];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self performSelector:@selector(showDemo:) withObject:self afterDelay:2];
}

- (void)showDemo:(id)sender
{
    [self.dimGlassView showOnView:self.view];
    self.dimGlassView.center = self.view.center;
    [self performSelector:@selector(hideDemo:) withObject:self afterDelay:2];
}

- (void)hideDemo:(id)sender
{
    [self.dimGlassView hide];
}

@end
