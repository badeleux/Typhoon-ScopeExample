//
//  SubFancyViewController.m
//  Typhoon-ScopesExample
//
//  Created by Kamil Badyla on 08/05/15.
//  Copyright (c) 2015 Badeleux. All rights reserved.
//

#import "SubFancyViewController.h"

@interface SubFancyViewController ()

@property FancyRepository *fancyRepository;

@end

@implementation SubFancyViewController

- (instancetype)initWithFancyRepository:(FancyRepository*)fancyRepo
{
    self = [super init];
    if (self) {
        _fancyRepository = fancyRepo;
        
        DDLogInfo(@"SubFancy Init");
    }
    return self;
}

- (void)dealloc {
    DDLogInfo(@"SubFancy Dealloc");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
