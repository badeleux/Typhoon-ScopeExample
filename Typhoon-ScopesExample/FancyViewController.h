//
//  FancyViewController.h
//  Typhoon-ScopesExample
//
//  Created by Kamil Badyla on 08/05/15.
//  Copyright (c) 2015 Badeleux. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FancyRepository;

@interface FancyViewController : UIViewController

- (instancetype)initWithContentVC:(UIViewController*)viewController
                  fancyRepository:(FancyRepository*)repo;

@end
