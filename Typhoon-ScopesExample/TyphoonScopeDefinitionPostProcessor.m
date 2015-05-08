//
//  TyphoonScopeDefinitionPostProcessor.m
//  Typhoon-ScopesExample
//
//  Created by Kamil Badyla on 08/05/15.
//  Copyright (c) 2015 Badeleux. All rights reserved.
//

#import "TyphoonScopeDefinitionPostProcessor.h"
#import <Typhoon.h>

@interface TyphoonScopeDefinitionPostProcessor ()

@property NSMutableDictionary *patches;

@end

@implementation TyphoonScopeDefinitionPostProcessor

//-------------------------------------------------------------------------------------------
#pragma mark - Initialization & Destruction

- (id)init
{
    self = [super init];
    if (self) {
        _patches = [[NSMutableDictionary alloc] init];
    }
    return self;
}

//-------------------------------------------------------------------------------------------
#pragma mark - Interface Methods

- (void)patchDefinitionWithKey:(NSString *)key withScope:(TyphoonScope)scope
{
    [_patches setObject:@(scope) forKey:key];
}


- (void)patchDefinitionWithSelector:(SEL)definitionSelector withScope:(TyphoonScope)scope
{
    [self patchDefinitionWithKey:NSStringFromSelector(definitionSelector) withScope:scope];
}

- (void)postProcessDefinition:(TyphoonDefinition *)definition replacement:(TyphoonDefinition **)definitionToReplace withFactory:(TyphoonComponentFactory *)factory {
    NSNumber *scopeObj = _patches[definition.key];
    if (scopeObj) {
        definition.scope = [scopeObj unsignedIntegerValue];
    }
}

@end
