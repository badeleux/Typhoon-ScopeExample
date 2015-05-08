//
//  FancyViewController.m
//  Typhoon-ScopesExample
//
//  Created by Kamil Badyla on 08/05/15.
//  Copyright (c) 2015 Badeleux. All rights reserved.
//

#import "FancyViewController.h"

@interface FancyViewController ()

@property FancyRepository *fancyRepository;
@property UIViewController *contentViewController;

@end

@implementation FancyViewController

- (instancetype)initWithContentVC:(UIViewController*)viewController
                  fancyRepository:(FancyRepository*)rep {
    self = [super init];
    if (self) {
        _fancyRepository = rep;
        _contentViewController = viewController;
        DDLogInfo(@"Fancy Init");
    }
    return self;
}

- (void)dealloc {
    DDLogInfo(@"Fancy Dealloc");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildViewController:self.contentViewController];
    [self.view addSubview:self.contentViewController.view];
    self.contentViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, CGRectGetMidY(self.view.frame));
    [self.contentViewController didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
