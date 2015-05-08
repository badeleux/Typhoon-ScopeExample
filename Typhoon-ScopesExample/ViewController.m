//
//  ViewController.m
//  Typhoon-ScopesExample
//
//  Created by Kamil Badyla on 08/05/15.
//  Copyright (c) 2015 Badeleux. All rights reserved.
//

#import "ViewController.h"
#import "ApplicationAssembly.h"
#import "TyphoonScopeDefinitionPostProcessor.h"

@interface TyphoonAssembly ()

@property (readonly) TyphoonBlockComponentFactory *factory;

@end

@interface ViewController ()

@property ApplicationAssembly *assembly;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _assembly = [[ApplicationAssembly assembly] activate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)graphScope:(id)sender {
    [self openFancyWithScope:TyphoonScopeObjectGraph];
}
- (IBAction)prototype:(id)sender {
    [self openFancyWithScope:TyphoonScopePrototype];
}
- (IBAction)strongSingleton:(id)sender {
    [self openFancyWithScope:TyphoonScopeSingleton];
}
- (IBAction)weakSingleton:(id)sender {
    [self openFancyWithScope:TyphoonScopeWeakSingleton];
}
- (IBAction)unload:(id)sender {
    [self.assembly.factory unload];
}

- (void)openFancyWithScope:(TyphoonScope)scope {
    TyphoonScopeDefinitionPostProcessor *scopePatcher = [TyphoonScopeDefinitionPostProcessor new];
    [scopePatcher patchDefinitionWithSelector:@selector(fancyRepository)
                                    withScope:scope];
    [self.assembly attachPostProcessor:scopePatcher];
    [self.navigationController pushViewController:[self.assembly fancyViewController]
                                         animated:YES];
}

@end
