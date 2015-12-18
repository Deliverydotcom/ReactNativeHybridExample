//
//  ReactNativeObjCViewController.m
//  ReactNativeExample
//
//  Created by Jesse Sessler on 12/17/15.
//  Copyright © 2015 Delivery. All rights reserved.
//

#import "ReactNativeObjCViewController.h"
#import "ReactNativeViewObjC.h"

@interface ReactNativeObjCViewController ()

@property (weak, nonatomic) IBOutlet ReactNativeViewObjC *reactViewWrapper;

@end

@implementation ReactNativeObjCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"React Wrapper (Obj C)";
    
    self.reactViewWrapper.data = [@{
                                   @"route": @"objectivec",
                                   @"someFakeId": [NSNumber numberWithFloat:12345]
                                   } mutableCopy];
    
    [self.reactViewWrapper initializeReactView];
}

@end
