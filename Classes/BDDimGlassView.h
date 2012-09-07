//
//  BDDimGlassView.h
//  BDDimGlassView
//
//  Created by norsez on 9/7/12.
//  Copyright (c) 2012 Bluedot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDDimGlassView : UIView

- (void)showOnView:(UIView*)showOnView;
- (void)hide;

@property (nonatomic, assign) CGFloat dimGlassBorderWidth;
@property (nonatomic, assign) CGFloat dimGlassCornerRadius;

@end
