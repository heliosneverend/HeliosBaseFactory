//
//  HeliosStepper.m
//  HeliosBaseFactory
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "HeliosStepper.h"

@interface HeliosStepper ()
{
    UIButton *_increaseButton;
    UIButton *_decreaseButton;
    UILabel *_valueLabel;
}
@end

@implementation HeliosStepper

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        //初始值,必须待上
        [self bymab_initWithInitialValue];
        //初始UI
        [self bymab_initWithUI];
        
    }
    return self;
}

- (void)bymab_initWithInitialValue {
    
    _minValue = 1;
    _maxValue = 1000;
    _step = 1;
    _currentValue = 1;
}

- (void)bymab_initWithUI {
    
    _increaseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _increaseButton.frame = CGRectMake(116 - 40, 0, 40, 30);
    [self addSubview:_increaseButton];
    [_increaseButton setImage:[UIImage imageNamed:@"shoppingCar_increase.png"] forState:UIControlStateNormal];
    [_increaseButton addTarget:self action:@selector(bymab_increaseButtonClick) forControlEvents:UIControlEventTouchUpInside];
    _increaseButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    _decreaseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _decreaseButton.frame = CGRectMake(0, 0, 40, 30);
    [self addSubview:_decreaseButton];
    [_decreaseButton setImage:[UIImage imageNamed:@"shoppingCar_decrease.png"] forState:UIControlStateNormal];
    [_decreaseButton addTarget:self action:@selector(bymab_decreaseButtonClick) forControlEvents:UIControlEventTouchUpInside];
    _decreaseButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    
    UIButton *valueButton = [UIButton buttonWithType:UIButtonTypeCustom];
    valueButton.frame = CGRectMake(40, 0, 36, 30);
    [valueButton setImage:[UIImage imageNamed:@"shoppingCar_value.png"] forState:UIControlStateNormal];
    [self addSubview:valueButton];
    
    _valueLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 0, 36, 30)];
    [self addSubview:_valueLabel];
    
    _valueLabel.textColor = [UIColor blackColor];
    _valueLabel.font = [UIFont systemFontOfSize:13];
    _valueLabel.textAlignment = NSTextAlignmentCenter;
}


#pragma mark - getter

-(void)setCurrentValue:(NSInteger)currentValue {
    
    _currentValue = currentValue;
    
    NSString *currentValueString = [NSString stringWithFormat:@"%ld", _currentValue];
    _valueLabel.text = currentValueString;
    
    // 设置按钮状态
    [self bymab_setButtonState];
    
}

#pragma mark - Button

- (void)bymab_setButtonState {
    
    if (_currentValue >= _maxValue) {
        _increaseButton.enabled = NO;
    }else {
        _increaseButton.enabled = YES;
    }
    
    if (_currentValue <= _minValue) {
        _decreaseButton.enabled = NO;
    }else {
        _decreaseButton.enabled = YES;
    }
}

- (void)bymab_increaseButtonClick {
    
    if (_currentValue < _maxValue) {
        _currentValue += _step;
    }
    
    if (self.stepperValueDidChangedBlock){
        self.stepperValueDidChangedBlock([NSString stringWithFormat:@"%ld", _currentValue], YES);
    }
    //    self.currentValue = MIN(_maxValue, _currentValue);
    
}

- (void)bymab_decreaseButtonClick {
    
    if (_currentValue > _minValue) {
        _currentValue -= _step;
    }
    
    if (self.stepperValueDidChangedBlock){
        self.stepperValueDidChangedBlock([NSString stringWithFormat:@"%ld", _currentValue], NO);
    }
    
    //    self.currentValue = MAX(_minValue, _currentValue);
    
}

@end
