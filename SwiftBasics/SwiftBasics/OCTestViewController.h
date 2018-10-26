//
//  OCTestViewController.h
//  SwiftBasics
//
//  Created by flowerflower on 2018/10/26.
//  Copyright © 2018年 flowerflower. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface OCTestViewController : UIViewController


@property(nonatomic, copy)void(^handlerOnClickCallBack)(void);


@property(nonatomic, copy)void(^handlerOnClick1CallBack)(NSString *userId);



@end
