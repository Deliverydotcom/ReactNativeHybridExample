//
//  ReactNativeViewObjC.m
//  ReactNativeExample
//
//  Created by Jesse Sessler on 12/17/15.
//  Copyright © 2015 Delivery. All rights reserved.
//

#import "ReactNativeViewObjC.h"
#import "RCTRootView.h"

@implementation ReactNativeViewObjC

-(void) initializeReactView {
    
    
    // Configure and set any additional data to be passed to react
    // ================================================
    
    BOOL REACT_DEV_MODE = NO;
    
    if (self.data == nil) {
        self.data = [@{} mutableCopy];
    }
    
    // this is a good place to pass configuration variables
    [self.data setValuesForKeysWithDictionary:@{
                                                @"DEV_MODE" : [NSNumber numberWithBool:REACT_DEV_MODE],
                                                @"API_KEY"  : @"ABCDEF123456"
                                                }];
    
    
    // Set location of the main js bundle
    // ==================================
    
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios&dev=true"];
    
    if (!REACT_DEV_MODE) {
        jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
    }
    
    // Instantiate our root view, add as a subview, set constraints
    // ============================================================
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"ReactNativeExample"
                                                 initialProperties:self.data
                                                     launchOptions:nil];
    
    rootView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:rootView];
    
    NSDictionary *views = @{@"rootView": rootView};
    NSArray *constraints = @[];
    constraints = [constraints arrayByAddingObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[rootView]-0-|" options:0 metrics:nil views:views]];
    constraints = [constraints arrayByAddingObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[rootView]-0-|" options:0 metrics:nil views:views]];
    
    [self addConstraints:constraints];
    [self layoutIfNeeded];
}

@end
