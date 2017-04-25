//
//  SASingletonB.h
//  SingletonCrash
//
//  Created by Sa on 25/04/2017.
//  Copyright © 2017 Sa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SASingletonB : NSObject

@property (nonatomic,strong)NSString *dull;

+ (instancetype)shareIns;

@end
