//
//  SubFancyViewController.h
//  Typhoon-ScopesExample
//
//  Created by Kamil Badyla on 08/05/15.
//  Copyright (c) 2015 Badeleux. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FancyRepository;

@interface SubFancyViewController : UIViewController

- (instancetype)initWithFancyRepository:(FancyRepository*)fancyRepo;

@end
