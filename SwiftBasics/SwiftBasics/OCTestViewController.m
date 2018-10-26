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
    // Do any additional setup after loading the view.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    

    if (_handlerOnClickCallBack) {
        _handlerOnClickCallBack();
    }
    
    
}


@end
