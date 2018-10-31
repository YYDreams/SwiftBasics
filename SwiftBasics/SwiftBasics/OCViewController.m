//
//  ViewController.m
//  SwiftBasics
//
//  Created by flowerflower on 2018/10/31.
//  Copyright © 2018年 flowerflower. All rights reserved.
//

#import "OCViewController.h"
#import "OCTestViewController.h"
@interface OCViewController ()<OCTestViewControllerDelegate>

@end

@implementation OCViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addNotificationCenter];

    [self setupInit];
    
}

- (void)setupInit{
    OCTestViewController *ocVC = [[OCTestViewController alloc]init];
    ocVC.handlerOnClickCallBack = ^{
        NSLog(@"handlerOnClickCallBack");
    };
    
    ocVC.handlerOnClickCallBack1 = ^(NSString *name) {
        
        NSLog(@"handlerOnClickCallBack1 name = %@",name);
        
    };
    
    ocVC.handlerOnClickCallBack2 = ^(NSDictionary *dic) {
        NSLog(@"handlerOnClickCallBack2 dic = %@",dic);
        
    };
    
    
    ocVC.delegate = self;
    
    
}
#pragma mark - addNotificationCenter
- (void)addNotificationCenter{
    
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(testDemo) name:@"TestNotification" object:nil];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(testDemo1:) name:@"TestNotification1" object:nil];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(testDemo2:) name:@"TestNotification2" object:nil];

    
}

#pragma mark - SEL Methods
- (void)testDemo{
    
    NSLog(@"testDemotestDemo");
    
}
- (void)testDemo1:(NSNotification *)noti{
    NSLog(@"testDemo1 noti: %@",noti.object);

    
    
}
- (void)testDemo2:(NSNotification *)noti{
    
    
    NSLog(@"testDemo1 noti: %@",noti.userInfo);
    
}




- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    OCTestViewController *ocVC = [[OCTestViewController alloc]init];
//    ocVC.handlerOnClickCallBack = ^{
//        NSLog(@"handlerOnClickCallBack");
//    };
//
//    ocVC.handlerOnClickCallBack1 = ^(NSString *name) {
//
//        NSLog(@"handlerOnClickCallBack1 name = %@",name);
//
//    };
//
//    ocVC.handlerOnClickCallBack2 = ^(NSDictionary *dic) {
//        NSLog(@"handlerOnClickCallBack2 dic = %@",dic);
//
//    };
//
//
//    ocVC.delegate = self;
//
//    [self.navigationController pushViewController:ocVC animated:true];
//
    
}


#pragma mark - <OCTestViewControllerDelegate>

- (void)testDelegateDemo{
    
    NSLog(@"testDelegateDemo");
}


- (void)testDelegateDemo1:(NSString *)name{
    
    NSLog(@"testDelegateDemo1 name: %@",name);
}

- (void)testDelegateDemo2:(NSDictionary *)dic{
    
    NSLog(@"testDelegateDemo2 dic: %@",dic);
    
}

#pragma mark - dealloc
- (void)dealloc{
    
    [NSNotificationCenter.defaultCenter removeObserver:self];
    
}

@end
