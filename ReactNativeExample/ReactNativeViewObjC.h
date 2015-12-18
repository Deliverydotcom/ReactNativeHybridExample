//
//  ReactNativeViewObjC.h
//  ReactNativeExample
//
//  Created by Jesse Sessler on 12/17/15.
//  Copyright © 2015 Delivery. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReactNativeViewObjC : UIView

// set any data you want to pass to react in this dictionary
@property NSMutableDictionary *data;

- (void) initializeReactView;

@end
