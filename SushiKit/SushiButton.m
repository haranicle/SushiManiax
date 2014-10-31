//
//  SushiButton.m
//  SushiManiax
//
//  Created by MTER on 2014/10/22.
//  Copyright (c) 2014年 haranicle. All rights reserved.
//

#import "SushiButton.h"

@implementation SushiButton

- (instancetype)initWithCoder:(NSCoder*)coder {
    self = [super initWithCoder:coder];
    if (self) {
    }
    return self;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

- (void)setBorderColor:(UIColor*)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    self.clipsToBounds = YES;
}

- (void)drawRect:(CGRect)rect {
    NSLog(@"SushiButton drawRect🌟");
    CGContextRef context = UIGraphicsGetCurrentContext();

    // 影を描画
    CGContextSetFillColor(context,
                          CGColorGetComponents(self.ellipseColor.CGColor));
    NSInteger padding = 20;
    CGRect frame = self.bounds;
    frame.origin = CGPointMake(padding, frame.size.height * 0.7);
    frame.size =
        CGSizeMake(frame.size.width - padding * 2, frame.size.height * 0.2);
    CGContextFillEllipseInRect(context, frame);
    
}


@end
