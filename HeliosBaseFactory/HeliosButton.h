//
//  HeliosButton.h
//  HeliosBaseFactory
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeliosButton : UIButton
- (instancetype)initWithFrame:(CGRect)frame
                         Text:(NSString*)text
                    TextColor:(UIColor*)textColor
                     FontSize:(CGFloat)fontSize
                       Target:(UIViewController*)currentVC
                       Action:(SEL)buttonAction;

- (instancetype)initWithFrame:(CGRect)frame
                      ImgName:(NSString*)imgName
                       Target:(UIViewController*)currentVC
                       Action:(SEL)buttonAction;
@end
