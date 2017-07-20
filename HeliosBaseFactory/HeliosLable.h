//
//  HeliosLable.h
//  HeliosBaseFactory
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeliosLable : UILabel
- (instancetype)initWithFrame:(CGRect)frame
                TextAlignment:(NSTextAlignment)textAlignment
                    TextColor:(UIColor*)textColor
                     FontSize:(CGFloat)fontSize
                        Lines:(NSInteger)line;
@end
