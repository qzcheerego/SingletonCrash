//
//  SNUtily.h
//  singleBug
//
//  Created by Sa on 25/04/2017.
//  Copyright © 2017 Sa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SASingletonA : NSObject

@property (nonatomic,strong)NSString *dull;

+(instancetype)shareIns;

+(NSString *)hehe;

@end
