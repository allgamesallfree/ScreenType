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
/// - iPhone3_5: 3.5 inch iPhone (4, 4S)
/// - iPhone4_0: 4.0 inch iPhone (5, 5S, 5C)
/// - iPhone4_7: 4.7 inch iPhone (6, 7, 8)
/// - iPhone5_5: 5.5 inch iPhone (6+, 7+, 8+)
/// - iPhone5_8: 5.8 inch iPhone (X)
/// - iPad9_7: 9.7 inch iPad
/// - iPad10_5: 10.5 inch iPad
/// - iPad12_9: 12.9 inch iPad
@objc public enum ScreenType: Int {
    /// 3.5 inch iPhone (4, 4S)
    case iPhone3_5

    /// 4.0 inch iPhone (5, 5S, 5C)
    case iPhone4_0

    /// 4.7 inch iPhone (6, 7, 8)
    case iPhone4_7

    /// 5.5 inch iPhone (6+, 7+, 8+)
    case iPhone5_5

    /// 5.8 inch iPhone (X)
    case iPhone5_8

    /// 9.7 inch iPad
    case iPad9_7

    /// 10.5 inch iPad
    case iPad10_5

    /// 12.9 inch iPad
    case iPad12_9
}

extension ScreenType: Comparable {
    public static func <(lhs: ScreenType, rhs: ScreenType) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}

extension UIScreen {
    /// Gets the iPhone / iPad screen type for the currently running device
    @objc public static var current: ScreenType {
	let screenLongestSide = max(main.bounds.width, main.bounds.height)
	switch screenLongestSide {
        case 480:
            return .iPhone3_5
        case 568:
            return .iPhone4_0
        case 667:
            return .iPhone4_7
        case 736:
            return .iPhone5_5
        case 812:
            return .iPhone5_8
        case 1024:
            return .iPad9_7
        case 1112:
            return .iPad10_5
        default:
            return .iPad12_9
        }
    }
}
