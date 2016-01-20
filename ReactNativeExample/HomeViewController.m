//
//  HomeViewController.m
//  ReactNativeExample
//
//  Created by Jesse Sessler on 12/17/15.
//  Copyright © 2015 Delivery. All rights reserved.
//

#import "HomeViewController.h"
#import "ReactNativeObjCViewController.h"
#import "ReactNativeExample-Swift.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Home";
}

- (IBAction)reactViewObjCPressed:(id)sender {
    ReactNativeObjCViewController *reactNativeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ReactNativeObjCVC"];
    reactNativeVC.route = @"routeNameObjectiveCView";
    [self.navigationController pushViewController:reactNativeVC animated:YES];
}

- (IBAction)reactViewSwiftPressed:(id)sender {
    ReactNativeSwiftViewController *reactNativeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ReactNativeSwiftVC"];
    reactNativeVC.route = @"routeNameSwiftView";
    [self.navigationController pushViewController:reactNativeVC animated:YES];
}

@end
