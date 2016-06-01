//
//  MyClass.m
//  Weatherforecast
//
//  Created by       苑 on 16/3/31.
//  Copyright © 2016年 kae. All rights reserved.
//

#import "MyClass.h"
static MyClass *_myClass =nil;
@implementation MyClass
+ (id)sharedProperty{
    @synchronized(self) {
        if (_myClass ==nil) {
            _myClass =[[MyClass alloc]init];
        }
    }
    return _myClass;
}
+ (id)alloc{
    @synchronized(self) {
        if (_myClass ==nil) {
            _myClass =[super alloc];
        }
    }
    return _myClass;
}
- (void)dealloc{
    self.maxT =nil;
    self.minT =nil;
    self.weatherURL =nil;
    [super dealloc];
}
@end
