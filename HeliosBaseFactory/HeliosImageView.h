//
//  HeliosImageView.h
//  HeliosBaseFactory
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeliosImageView : UIImageView
- (instancetype)initWithFrame:(CGRect)frame
                      imgName:(NSString*)imgName
                     isCutOut:(BOOL)cutOut;
@end
