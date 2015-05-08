//
//  ApplicationAssembly.h
//  Typhoon-ScopesExample
//
//  Created by Kamil Badyla on 08/05/15.
//  Copyright (c) 2015 Badeleux. All rights reserved.
//

#import "TyphoonAssembly.h"
#import "FancyViewController.h"

@interface ApplicationAssembly : TyphoonAssembly

- (FancyViewController*)fancyViewController;
- (FancyRepository*)fancyRepository;

@end
