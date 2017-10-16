//
//  ObjectiveCViewController.m
//  ScreenType_Example
//
//  Created by Stein, Maxwell on 10/16/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

#import "ObjectiveCViewController.h"
#import "ScreenType-Swift.h"

@interface ObjectiveCViewController ()

@end

@implementation ObjectiveCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    if ([UIScreen current] == ScreenTypeIPhoneX) {
        NSLog(@"Screen Type is iPhone X");
    }

    if ([UIScreen current] > ScreenTypeIPhone5) {
        NSLog(@"Screen is larger than an iPhone 5");
    }
}

@end
