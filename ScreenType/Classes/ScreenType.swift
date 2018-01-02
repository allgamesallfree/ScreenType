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
/// - iPhone4_0: 4.0 inch iPhone (5, 5S, 5C, SE)
/// - iPhone4_7: 4.7 inch iPhone (6, 7, 8)
/// - iPhone5_5: 5.5 inch iPhone (6+, 7+, 8+)
/// - iPhone5_8: 5.8 inch iPhone (X)
/// - iPad9_7: 9.7 inch iPad
/// - iPad10_5: 10.5 inch iPad
/// - iPad12_9: 12.9 inch iPad
@objc public enum ScreenType: Int {
    /// 3.5 inch iPhone (4, 4S)
    case iPhone3_5 = 480

    /// 4.0 inch iPhone (5, 5S, 5C, SE)
    case iPhone4_0 = 568

    /// 4.7 inch iPhone (6, 7, 8)
    case iPhone4_7 = 667

    /// 5.5 inch iPhone (6+, 7+, 8+)
    case iPhone5_5 = 736

    /// 5.8 inch iPhone (X)
    case iPhone5_8 = 812

    /// 9.7 inch iPad
    case iPad9_7 = 1024

    /// 10.5 inch iPad
    case iPad10_5 = 1112

    /// 12.9 inch iPad
    case iPad12_9 = 1366

    /// Unknown device
    case unknown = -1
}

extension ScreenType: Comparable {
    public static func < (lhs: ScreenType, rhs: ScreenType) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}

extension UIScreen {
    /// Gets the iPhone / iPad screen type for the currently running device
    @objc public static var current: ScreenType {
        let screenLongestSide = Int(max(main.bounds.width, main.bounds.height))
        return ScreenType(rawValue: screenLongestSide) ?? .unknown
    }
}
