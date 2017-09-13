//
//  Utils.m
//  live4iphone
//
//  Created by ISD ClientDev on 11-5-6.
//  Copyright 2011 tencent.com. All rights reserved.
//

#import "Utils.h"
#import <UIKit/UIKit.h>

@implementation Utils

+ (CGFloat)systemVersion
{
    return [[[UIDevice currentDevice] systemVersion] floatValue];
}

+ (BOOL)isIOS8OrLatter {
    return ([Utils systemVersion] >= 8.0);
}

+ (BOOL)isIOS7OrLatter {
    return ([Utils systemVersion] >= 7.0);
}

+ (BOOL)isIOS6OrLatter {
    return ([Utils systemVersion] >= 6.0);
}

+ (BOOL)isIOS5OrEarlier {
    return ([Utils systemVersion] <= 5.0);
}
@end