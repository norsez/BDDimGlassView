//
//  BDViewController.h
//  BDDimGlassView
//
//  Created by norsez on 9/7/12.
//  Copyright (c) 2012 Bluedot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BDDimGlassView.h"
@interface BDViewController : UIViewController
- (IBAction)showDemo:(id)sender;
@property (nonatomic, strong ) IBOutlet BDDimGlassView* dimGlassView;
@end
