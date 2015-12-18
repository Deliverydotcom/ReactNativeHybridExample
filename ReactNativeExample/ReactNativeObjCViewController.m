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
                                   @"title": @"This is the title passed through data",
                                   @"content": @"This is the content passed through data"
                                   } mutableCopy];
    
    [self.reactViewWrapper initializeReactView];
}

@end
