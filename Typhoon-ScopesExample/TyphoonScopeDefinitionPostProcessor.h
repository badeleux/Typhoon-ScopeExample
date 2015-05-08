//
//  TyphoonScopeDefinitionPostProcessor.h
//  Typhoon-ScopesExample
//
//  Created by Kamil Badyla on 08/05/15.
//  Copyright (c) 2015 Badeleux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Typhoon.h>



@interface TyphoonScopeDefinitionPostProcessor : NSObject <TyphoonDefinitionPostProcessor>

- (void)patchDefinitionWithSelector:(SEL)definitionSelector withScope:(TyphoonScope)scope;
- (void)patchDefinitionWithKey:(NSString *)key withScope:(TyphoonScope)scope;




@end
