//
//  FancyRepository.m
//  Typhoon-ScopesExample
//
//  Created by Kamil Badyla on 08/05/15.
//  Copyright (c) 2015 Badeleux. All rights reserved.
//

#import "FancyRepository.h"

DDLogLevel ddLogLevel = DDLogLevelOff;

@implementation FancyRepository

- (instancetype)init
{
    self = [super init];
    if (self) {
        ddLogLevel = DDLogLevelOff;
        DDLogInfo(@"Init");
    }
    return self;
}

- (void)dealloc {
    DDLogInfo(@"Dealloc");
}

@end
