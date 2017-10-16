//
//  DeviceType.swift
//  DeviceType
//
//  Created by Stein, Maxwell on 10/11/17.
//  Copyright © 2017 Maxwell Stein. All rights reserved.
//

import UIKit

@objc enum ScreenType: Int {
    case iPhone4, iPhone5, iPhone6, iPhone6Plus, iPhoneX, iPad9_7, iPad10_5, iPad12_9
}

extension UIScreen {
    @objc static var current: ScreenType {
        let screenLongestSide: CGFloat = {
            let screenBounds = main.bounds
            if screenBounds.height > screenBounds.width {
                return screenBounds.height
            } else {
                return screenBounds.width
            }
        }()
        switch screenLongestSide {
        case 480:
            return .iPhone4
        case 568:
            return .iPhone5
        case 667:
            return .iPhone6
        case 736:
            return .iPhone6Plus
        case 812:
            return .iPhoneX
        case 1024:
            return .iPad9_7
        case 1112:
            return .iPad10_5
        default:
            return .iPad12_9
        }
    }
}
