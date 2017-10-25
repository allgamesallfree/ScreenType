//
//  ScreenTypeObjectiveCViewController.m
//  ScreenType_Example
//
//  Created by Stein, Maxwell on 10/16/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

#import "ScreenTypeObjectiveCViewController.h"
#import "ScreenType-Swift.h"

@interface ScreenTypeObjectiveCViewController ()

@end

@implementation ScreenTypeObjectiveCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    if ([UIScreen current] == ScreenTypeIPhone5_8) {
        NSLog(@"Screen Type is iPhone X");
    }

    if ([UIScreen current] > ScreenTypeIPhone4_0) {
        NSLog(@"Screen is larger than an iPhone 5");
    }
}

@end
