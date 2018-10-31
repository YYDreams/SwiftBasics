//
//  OCTestViewController.h
//  SwiftBasics
//
//  Created by flowerflower on 2018/10/26.
//  Copyright © 2018年 flowerflower. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol OCTestViewControllerDelegate<NSObject>


- (void)testDelegateDemo;

@optional

- (void)testDelegateDemo1:(NSString *)name;

- (void)testDelegateDemo2:(NSDictionary *)dic;
@end


typedef void(^HandlerOnClickCallBack)(void);

typedef void(^HandlerOnClickCallBack1)(NSString *name);

typedef void(^HandlerOnClickCallBack2)(NSDictionary *dic);

@interface OCTestViewController : UIViewController


/**  */
@property (nonatomic, copy) HandlerOnClickCallBack handlerOnClickCallBack;

@property (nonatomic, copy) HandlerOnClickCallBack1 handlerOnClickCallBack1;

@property (nonatomic, copy) HandlerOnClickCallBack2 handlerOnClickCallBack2;


@property(nonatomic,weak) id<OCTestViewControllerDelegate> delegate;


@property(nonatomic, copy)void(^handlerOnClick1CallBack)(NSString *userId);



@end
