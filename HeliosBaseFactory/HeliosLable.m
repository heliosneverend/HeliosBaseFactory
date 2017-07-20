//
//  HeliosLable.m
//  HeliosBaseFactory
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "HeliosLable.h"

@implementation HeliosLable


- (instancetype)initWithFrame:(CGRect)frame
                TextAlignment:(NSTextAlignment)textAlignment
                    TextColor:(UIColor*)textColor
                     FontSize:(CGFloat)fontSize
                        Lines:(NSInteger)line{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.textAlignment = textAlignment;
        self.textColor = textColor;
        self.font = [UIFont systemFontOfSize:fontSize];
        self.numberOfLines = line;
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
