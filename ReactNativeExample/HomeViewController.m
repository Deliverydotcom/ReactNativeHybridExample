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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)reactViewObjCPressed:(id)sender {
    ReactNativeObjCViewController *reactNativeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ReactNativeObjCVC"];
    [self.navigationController pushViewController:reactNativeVC animated:YES];
}

- (IBAction)reactViewSwiftPressed:(id)sender {
    ReactNativeSwiftViewController *reactNativeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ReactNativeSwiftVC"];
    [self.navigationController pushViewController:reactNativeVC animated:YES];
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
