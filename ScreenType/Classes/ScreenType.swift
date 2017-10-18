//
//  ScreenType.swift
//  ScreenType
//
//  Created by Stein, Maxwell on 10/11/17.
//  Copyright © 2017 Maxwell Stein. All rights reserved.
//

import UIKit

/// The screen sizes for all available iPhone and iPad's
///
/// - iPhone4: 3.5 inch iPhone (4, 4S)
/// - iPhone5: 4.0 inch iPhone (5, 5S, 5C)
/// - iPhone6: 4.7 inch iPhone (6, 7, 8)
/// - iPhone6Plus: 5.5 inch iPhone (6+, 7+, 8+)
/// - iPhoneX: 5.8 inch iPhone
/// - iPad9_7: 9.7 inch iPad
/// - iPad10_5: 10.5 inch iPad
/// - iPad12_9: 12.9 inch iPad
@objc public enum ScreenType: Int {
    /// 3.5 inch iPhone (4, 4S)
    case iPhone4

    /// 4.0 inch iPhone (5, 5S, 5C)
    case iPhone5

    /// 4.7 inch iPhone (6, 7, 8)
    case iPhone6

    /// 5.5 inch iPhone (6+, 7+, 8+)
    case iPhone6Plus

    /// 5.8 inch iPhone
    case iPhoneX

    /// 9.7 inch iPad
    case iPad9_7

    /// 10.5 inch iPad
    case iPad10_5

    /// 12.9 inch iPad
    case iPad12_9
}

extension UIScreen {
    /// Gets the iPhone / iPad screen type for the currently running device
    @objc public static var current: ScreenType {
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
