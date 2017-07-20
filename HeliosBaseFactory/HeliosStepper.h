//
//  HeliosStepper.h
//  HeliosBaseFactory
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^HeliosStepperValueDidChangedBlock)(NSString *currentValueString, BOOL isAddOrDelete);
@interface HeliosStepper : UIView
@property (nonatomic, assign) NSInteger maxValue;
@property (nonatomic, assign) NSInteger minValue;
@property (nonatomic, assign) NSInteger step;
@property (nonatomic, assign) NSInteger currentValue;
@property (nonatomic, copy) HeliosStepperValueDidChangedBlock stepperValueDidChangedBlock;
@end
