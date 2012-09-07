//
//  BDDimGlassView.m
//  BDDimGlassView
//
//  Created by norsez on 9/7/12.
//  Copyright (c) 2012 Bluedot. All rights reserved.
//

#import "BDDimGlassView.h"
#import <QuartzCore/QuartzCore.h>

#define kIntervalTransition 1.f
#define kColorDimGlass [UIColor colorWithWhite:0 alpha:0.6]

@interface BDDimGlassView (){
    CAShapeLayer *_dimGlassBorder;
    
}
- (void) configureView;
@end
@implementation BDDimGlassView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configureView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self configureView];
    }
    return self;
}

- (void)showOnView:(UIView *)showOnView
{
    self.alpha = 0;
    [showOnView addSubview:self];
    self.superview.userInteractionEnabled = NO;
    [UIView animateWithDuration:kIntervalTransition
                     animations:^{
                         self.alpha = 1;
                     }];
}

- (void)hide
{
    [UIView animateWithDuration:kIntervalTransition
                     animations:^{
                         self.alpha = 0.f;
                     } completion:^(BOOL finished) {
                         [self removeFromSuperview];
                     }];
    self.superview.userInteractionEnabled = YES;
}

- (void)configureView
{
    self.dimGlassBorderWidth = 20;
    self.dimGlassCornerRadius = 12;
    self.opaque = NO;
    self.backgroundColor = kColorDimGlass;
     
    _dimGlassBorder = [CAShapeLayer layer];
    _dimGlassBorder.backgroundColor = kColorDimGlass.CGColor;
    _dimGlassBorder.opaque = NO;
    _dimGlassBorder.opacity = 0.8;
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:CGRectInset(self.bounds,
                                                                              -self.dimGlassBorderWidth,
                                                                              -self.dimGlassBorderWidth)
                                                     cornerRadius:self.dimGlassCornerRadius];
    _dimGlassBorder.path = path.CGPath;
    self.clipsToBounds = NO;
    self.layer.cornerRadius = self.dimGlassCornerRadius;
    [self.layer insertSublayer:_dimGlassBorder atIndex:0];
}

@end
