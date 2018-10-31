//
//  OCTestViewController.m
//  SwiftBasics
//
//  Created by flowerflower on 2018/10/26.
//  Copyright © 2018年 flowerflower. All rights reserved.
//





#import "OCTestViewController.h"




@interface OCTestViewController ()

@end

@implementation OCTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    

    NSString *name = @"flowerflower";
    
    if (_handlerOnClickCallBack) {
        _handlerOnClickCallBack();
    }
    
    
    if (_handlerOnClickCallBack1) {
        _handlerOnClickCallBack1(name);
    }
    
    NSDictionary *dic = @{@"name":name,
                          @"age":@"18"
                          };
    if (_handlerOnClickCallBack2) {
        _handlerOnClickCallBack2(dic);
    }

    [NSNotificationCenter.defaultCenter postNotificationName:@"TestNotification" object:nil];
    [NSNotificationCenter.defaultCenter postNotificationName:@"TestNotification1" object:name];
    [NSNotificationCenter.defaultCenter postNotificationName:@"TestNotification2" object:nil userInfo:dic];
    
    
    
    if ([self.delegate respondsToSelector:@selector(testDelegateDemo)]) {
        
        [self.delegate testDelegateDemo];
        
    }
    if ([self.delegate respondsToSelector:@selector(testDelegateDemo1:)]) {
        
        [self.delegate testDelegateDemo1:name];
        
    }
    if ([self.delegate respondsToSelector:@selector(testDelegateDemo2:)]) {
        
        [self.delegate testDelegateDemo2:dic];
        
    }
    
    
    [self.navigationController popViewControllerAnimated:true];
    
    
}


@end
