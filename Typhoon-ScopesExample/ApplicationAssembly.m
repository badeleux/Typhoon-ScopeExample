//
//  ApplicationAssembly.m
//  Typhoon-ScopesExample
//
//  Created by Kamil Badyla on 08/05/15.
//  Copyright (c) 2015 Badeleux. All rights reserved.
//

#import "ApplicationAssembly.h"
#import "SubFancyViewController.h"
#import "FancyRepository.h"

@implementation ApplicationAssembly

- (FancyViewController*)fancyViewController {
    return [TyphoonDefinition withClass:[FancyViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition useInitializer:@selector(initWithContentVC:fancyRepository:)
                                              parameters:^(TyphoonMethod *initializer) {
                                                  [initializer injectParameterWith:[self subFancyViewController]];
                                                  [initializer injectParameterWith:[self fancyRepository]];
                                              }];
                          }];
}

- (SubFancyViewController*)subFancyViewController {
    return [TyphoonDefinition withClass:[SubFancyViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition useInitializer:@selector(initWithFancyRepository:)
                                              parameters:^(TyphoonMethod *initializer) {
                                                  [initializer injectParameterWith:[self fancyRepository]];
                                              }];
                          }];
}


- (FancyRepository*)fancyRepository {
    return [TyphoonDefinition withClass:[FancyRepository class]
                          configuration:^(TyphoonDefinition *definition) {
//                              definition.scope = TyphoonScopePrototype;
                          }];
}

@end
