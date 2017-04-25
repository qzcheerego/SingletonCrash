//
//  SASingletonA.m
//  singleBug
//
//  Created by Sa on 25/04/2017.
//  Copyright © 2017 Sa. All rights reserved.
//

#import "SASingletonA.h"
#import "SASingletonB.h"

@implementation SASingletonA

+(instancetype)shareIns{

    static SASingletonA *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[SASingletonA alloc] init];
    });
    return instance;
}

+(NSString *)hehe{
    return [SASingletonA shareIns].dull;
}

-(instancetype)init{
    if (self = [super init]) {
        [SASingletonB shareIns];
    }
    return self;
}
@end
