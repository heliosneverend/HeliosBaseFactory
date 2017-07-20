//
//  HeliosImageView.m
//  HeliosBaseFactory
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "HeliosImageView.h"

@implementation HeliosImageView

- (instancetype)initWithFrame:(CGRect)frame
                      imgName:(NSString*)imgName
                     isCutOut:(BOOL)cutOut {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        if ([imgName hasSuffix:@".png"]) {
            [self setImage:[UIImage imageNamed:imgName]];
        }else {
            //SDImage
           // [self sd_setImageWithURL:[NSURL URLWithString:imgName]];
        }
        
        if (cutOut) {
            //截取图片中间部分
            [self setContentScaleFactor:[[UIScreen mainScreen] scale]];
            self.contentMode =  UIViewContentModeScaleAspectFill;
            self.autoresizingMask = UIViewAutoresizingFlexibleHeight;
            self.clipsToBounds  = YES;
        }
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
