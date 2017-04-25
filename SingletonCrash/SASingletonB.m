//
//  SNUtily.m
//  singleBug
//
//  Created by dangdang on 25/04/2017.
//  Copyright © 2017 Sa. All rights reserved.
//

#import "SASingletonB.h"
#import "SASingletonA.h"

@implementation SASingletonB

+(instancetype)shareIns{

    static SASingletonB *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[SASingletonB alloc] init];
    });
    return instance;
}


-(instancetype)init{
    
    if (self = [super init]) {
        [SASingletonA shareIns];
    }
    return self;
}
@end
