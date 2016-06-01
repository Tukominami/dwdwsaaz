//
//  MyClass.h
//  Weatherforecast
//
//  Created by       苑 on 16/3/31.
//  Copyright © 2016年 kae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject
@property (nonatomic,copy) NSString *maxT;
@property (nonatomic,copy) NSString *minT;
@property (nonatomic,copy) NSString *weatherURL;
+ (id)sharedProperty;
+ (id)alloc;
@end
