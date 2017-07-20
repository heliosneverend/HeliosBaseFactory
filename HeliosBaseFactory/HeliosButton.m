//
//  HeliosButton.m
//  HeliosBaseFactory
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "HeliosButton.h"

@implementation HeliosButton

- (instancetype)initWithFrame:(CGRect)frame
                         Text:(NSString*)text
                    TextColor:(UIColor*)textColor
                     FontSize:(CGFloat)fontSize
                       Target:(UIViewController*)currentVC
                       Action:(SEL)buttonAction {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setTitle:text forState:UIControlStateNormal];
        [self setTitleColor:textColor forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        
        [self addTarget:currentVC action:buttonAction forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                      ImgName:(NSString*)imgName
                       Target:(UIViewController*)currentVC
                       Action:(SEL)buttonAction {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
        
        [self addTarget:currentVC action:buttonAction forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}

@end
